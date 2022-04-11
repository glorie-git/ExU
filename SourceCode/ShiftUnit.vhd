library ieee;
Use ieee.std_logic_1164.all;
Use STD.TEXTIO.all;
Use ieee.numeric_std.all;

Entity ShiftUnit is
Generic ( N : natural := 64 );
Port ( A, B, C : in std_logic_vector( N-1 downto 0 );
Y : out std_logic_vector( N-1 downto 0 );
ShiftFN : in std_logic_vector( 1 downto 0 );
ExtWord : in std_logic );
End Entity ShiftUnit;


architecture rtl of ShiftUnit is
signal YsigSLL1, YsigSRL1, YsigSRA1, YsigSLL2, YsigSRL2, YsigSRA2,
		YsigMux1,YsigMux2,YsigMux2_32,YsigMux2_64,YsigMux3,YsigMux3_32,YsigMux3_64,YsigMux4,YsigMux5,
		Yout :std_logic_vector(N-1 downto 0);
signal ShiftCount1,ShiftCount2 :std_logic_vector(5 downto 0);
signal mux1Select :std_logic;
--signal Bsig : unsigned(N-1 downto 0);
begin
	--Bsig <= unsigned(B);
	ShiftCount1 <= ('0')&B(4 downto 0);
	ShiftCount2 <= B(5 downto 0);
--	ShiftFN <= B(30)&B(14);
--	ExtWord <= B(3);
mux1Select <= ShiftFN(1) AND ExtWord;

YsigMux1 <= A when mux1Select = '0' else
			A(31 downto 0)&A(N-1 downto 32) when mux1Select = '1';

	SLL6432:entity work.SLL64(rtl) generic map ( N => N) port map(X => YsigMux1,Y => YsigSLL1, ShiftCount => unsigned(ShiftCount1));
	SRL6432:entity work.SRL64(rtl) generic map ( N => N) port map(X => YsigMux1,Y => YsigSRL1, ShiftCount => unsigned(ShiftCount1));
	SRA6432:entity work.SRA64(rtl) generic map ( N => N) port map(X => YsigMux1,Y => YsigSRA1, ShiftCount => unsigned(ShiftCount1));
	
	SLL6464:entity work.SLL64(rtl) generic map ( N => N) port map(X => YsigMux1,Y => YsigSLL2, ShiftCount => unsigned(ShiftCount2));
	SRL6464:entity work.SRL64(rtl) generic map ( N => N) port map(X => YsigMux1,Y => YsigSRL2, ShiftCount => unsigned(ShiftCount2));
	SRA6464:entity work.SRA64(rtl) generic map ( N => N) port map(X => YsigMux1,Y => YsigSRA2, ShiftCount => unsigned(ShiftCount2));
	
YsigMux2_32 <= C when ShiftFN(0) = '0' else
			YsigSLL1;
			
YsigMux2_64 <= C when ShiftFN(0) = '0' else
			YsigSLL2;
			
YsigMux2 <= YsigMux2_32 when ExtWord = '1' else
			YsigMux2_64;

YsigMux3_32 <= YsigSRL1 when ShiftFN(0) = '0' else
			YsigSRA1;
			
YsigMux3_64 <= YsigSRL2 when ShiftFN(0) = '0' else
			YsigSRA2;

YsigMux3 <= YsigMux3_32 when ExtWord = '1' else
			YsigMux3_64;
			
YsigMux4 <= YsigMux2 when ExtWord = '0' else
			std_logic_vector(resize(signed(YsigMux2(N/2 -1 downto 0)),N));
			
YsigMux5 <= YsigMux3 when ExtWord = '0' else
			std_logic_vector(resize(signed(YsigMux3(N-1 downto 32)),N));
			
Yout <= YsigMux4 when ShiftFN(1) = '0' else
		YsigMux5;

Y <= Yout;
end rtl;
			