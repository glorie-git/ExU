library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use ieee.numeric_std.all;
use STD.textio.all;

entity ArithUnit is
	generic (N: natural := 64);
	port ( 	A, B : in std_logic_vector(N-1 downto 0);
			AddY, Y : out std_logic_vector(N-1 downto 0);
		-- Control signals
			AddnSub, ExtWord : in std_logic := '0';
		-- Status signals
			Cout, Ovfl, Zero, AltB, AltBu : out std_logic);
end entity ArithUnit;

architecture rtl of ArithUnit is

signal aSig, bSig : std_logic_vector(N-1 downto 0) := (others => '0');
signal S, temp : std_logic_vector(N-1 downto 0) := (others => '0');
signal sZero: std_logic_vector(N-1 downto 0) := (others => '0');
signal upperBits, lowerBits : std_logic_vector((N/2)-1 downto 0) := (others => '0');
signal coutSig, ovflSig : std_logic := '0';

begin

	bSig <= 	not B when AddnSub = '1' else
				B;
	
	Adder_64_bit : entity work.Adder(rtl) generic map ( N => N) port map ( A, bSig, S, AddnSub, coutSig, OvflSig);

	AltBu <= not coutSig;
	AltB <= ovflSig xor S(N-1);
	Cout <= coutSig;
	
	Ovfl <= coutSig xor OvflSig;

	temp(0) <= S(0);
	
	find_zero : for i in 1 to N-1 generate
		temp(i) <= temp(i-1) or S(i);
	end generate;
	
	zero <= temp(N-1);
	
	upperBits <= ( others => S((N/2)-1));
	lowerBits <= S((N/2)-1 downto 0);
	
	AddY <= S;
	
	Y 	<= upperBits & lowerBits when ExtWord = '1' else
			S;

end architecture rtl;

--architecture structure of ArithUnit is
--signal sgnExt, aSig : std_logic_vector(N-1 downto 0) := (others => '0');
--signal S, temp : std_logic_vector(N-1 downto 0) := (others => '0');
--signal sZero: std_logic;
--
--begin
--	Adder_64_bit : entity work.Adder(rtl) port map ( A,  B, S, AddnSub, Cout, Ovfl);
--	
--process (A, B, AddnSub, ExtWord)
--begin
--
--	if A > B then
--		AltB <= '1';
--	else
--		Altb <= '0';
--	end if;
--	
--	if unsigned(A) > unsigned(B) then
--		AltBu <= '1';
--	else
--		Altbu <= '0';
--	end if;
--	
--	temp(0) <= S(0);
--	
--	find_zero : for i in 1 to N-1 loop
--		temp(i) <= temp(i-1) or S(i);
--	end loop;
--			
--	Zero <= not temp(N-1);
--	
--	AddY <= S;
--	
--	SignExtend : sgnExt <= (N-1 downto (N/2) => AddY((N/2)-1)) & AddY((N/2)-1 downto 0); -- sign extend
--	
--	if ExtWord = '1' then
--		Y <= sgnExt;
--	else
--		Y <= AddY;
--	end if;
--
--end process;
--
--end architecture structure;

