library ieee;
Use ieee.std_logic_1164.all;
Use STD.TEXTIO.all;
Use ieee.numeric_std.all;

Entity ExecUnit is
Generic ( N : natural := 64 );
Port ( 
		A, B 				: in std_logic_vector( N-1 downto 0 );
		FuncClass 			: in std_logic_vector( 1 downto 0 );
		LogicFN 			: in std_logic_vector( 1 downto 0 );
		ShiftFN 			: in std_logic_vector( 1 downto 0 );
		AddnSub, ExtWord 	: in std_logic := '0';		
		Y 					: out std_logic_vector( N-1 downto 0 );
		Zero, AltB, AltBu 	: out std_logic
);
End Entity ExecUnit;

architecture rtl of ExecUnit is
signal A_sig, B_sig, AUout, Addout, LUout, SUout : std_logic_vector(N-1 downto 0);
signal AltB_sig, AltBu_sig : std_logic_vector(N-2 downto 0) := (others => '0');
signal Cout, Ovfl : std_logic;

begin

	A_sig <= A;
	B_sig <= B;
	
		-- Logic Unit Entity
	LU1:	entity work.LogicUnit(rtl) 
			generic map ( N => N) 
			port map(
				A 				=> A_sig,
				B 				=> B_sig, 
				Y 				=> LUout, 
				LogicFN 		=> LogicFN
			);
		
		-- Arithimetic Unit Entity
	AU1:	entity work.ArithUnit(rtl) 
			generic map ( N => N) 
			port map(
				A 				=> A_sig,
				B 				=> B_sig, 
				AddY 			=> Addout,
				Y				=> AUout,
				AddnSub			=> AddnSub,
				ExtWord			=> ExtWord,
				Cout			=> Cout,
				Ovfl			=> Ovfl,
				Zero			=> Zero,
				AltB			=> AltB,
				AltBu			=> AltBu
			);
		
		-- Shift Unit Entity
	SU1:	entity work.ShiftUnit(rtl) 
			generic map ( N => N) 
			port map(
				A 				=> A_sig,
				B 				=> B_sig,
				C 				=> Addout,
				Y 				=> SUout, 
				ShiftFN 		=> ShiftFN,
				ExtWord			=> ExtWord
			);
	
	Y <= 	SUout 			when 	FuncClass = "00" else
			LUout 			when 	FuncClass = "01" else
			AltB_sig&AltB 	when 	FuncClass = "10" else
			AltBu_sig&AltBu;

			
end rtl;
			
			
			
		
			 
	
		  
	
	

