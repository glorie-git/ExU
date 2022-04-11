library ieee;
Use ieee.std_logic_1164.all;
Use STD.TEXTIO.all;
Use ieee.numeric_std.all;

Entity LogicUnit is
Generic ( N : natural := 64 );
Port ( 
		A, B 	: in std_logic_vector( N-1 downto 0 );
		Y 		: out std_logic_vector( N-1 downto 0 );
		LogicFN : in std_logic_vector( 1 downto 0 ) );
End Entity LogicUnit;

architecture rtl of LogicUnit is

signal 	BXORA_sig,
		BORA_sig,
		BANDA_sig,
		BPass_sig,
		Logic_sig : std_logic_vector( N-1 downto 0 );
		
signal LogicFN_sig : std_logic_vector(1 downto 0);

begin

	LogicFN_sig <= LogicFN;
	BXORA_sig 	<= A XOR B;
	BORA_sig 	<= A OR B;
	BANDA_sig 	<= A AND B;
	BPass_sig 	<= B;

	Logic_sig 	<= 	BPass_sig 		when LogicFN_sig	= "00" else
					BXORA_sig 	when LogicFN_sig	= "01" else
					BORA_sig 	when LogicFN_sig	= "10" else
					BANDA_sig;
				
	Y 			<= Logic_sig;
	
end rtl;