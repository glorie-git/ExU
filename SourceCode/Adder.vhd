library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use ieee.numeric_std.all;
use STD.textio.all;

entity Adder is
	generic (N: natural := 64);
	port ( 	A, B : in std_logic_vector(N-1 downto 0);
				Y : out std_logic_vector(N-1 downto 0);
			-- Control signals
				Cin : in std_logic;
			-- Status signals
				Cout, Ovfl : out std_logic);
end entity Adder;

architecture rtl of Adder is
signal adderOut, sA, sB : std_logic_vector(N downto 0) := (others => '0');
signal S, sigCin : std_logic_vector(N-1 downto 0) := ( others => '0');
signal c63, c64 : std_logic := '0';

begin
	
	sA <= '0' & A;
	sB <= '0' & B;
	
	adderOut <= sA + sB + Cin;
	
	-- Carry out and overflow detection
	Ovfl <= sA(N-1) xor sB(N-1) xor adderOut(N-1);
	Cout <= adderOut(N);
	
	-- Y ouput
	Y <= adderOut(N-1 downto 0);

end architecture rtl;

