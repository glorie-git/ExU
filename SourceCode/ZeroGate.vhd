library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;


		-- Primitive XOR entity
entity NORgate is
	port(a0,a1 : in std_logic;
				 y: out std_logic);
end NORgate;

architecture behavioural of NORgate is
begin
		y <= a0 OR a1;
end behavioural;

--/********************************************************************************\--
--/********************************************************************************\--

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

		--OddParity entity
entity ZeroGate is
	generic (N : natural := 64);
	port(X 	: in std_logic_vector(N-1 downto 0);
		isZero : out std_logic);
end entity ZeroGate;


		-- architecture for Tree
		
architecture tree of ZeroGate is
	signal r0 : std_logic_vector(N-1 downto 0);

	signal y01 : std_logic;
	signal y02 : std_logic;
	signal y03 : std_logic;

	begin

		gen_tree: if N/2 >= 2 generate --Generate following statements aslong as N>=2
			TreeNOR01: entity work.ZeroGate(tree) generic map ( N => N/2) port map(X => r0(N/2-1 downto 0),isZero => y01);	-- instantiate Tree recursively while N>=2
			TreeNOR02: entity work.ZeroGate(tree) generic map ( N => N-(N/2)) port map(X => r0(N-1 downto N/2),isZero => y02);
			NORGate1 : entity work.NORgate(behavioural) port map(a0 => y01 ,a1 => y02, y => y03);				-- NOR Outputs from oddParity
		end generate gen_tree;

		gen_tree_last: if N/2 = 1 generate --Handle case for when N<2
			NORGate2 : entity work.NORgate(behavioural) port map(a0 => r0(0) ,a1 => r0(1), y => y03);			-- NOR final two bits into output 'isZero'
		end generate gen_tree_last;

	r0(N/2-1 downto 0) <= X(N/2-1 downto 0);	
	r0(N-1 downto N/2) <= X(N-1 downto N/2);
	isZero <= y03 ;

end tree;


