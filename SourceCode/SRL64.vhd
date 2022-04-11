library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use STD.textio.all;

entity SRL64 is
	generic ( N : natural := 64 );
	port ( 	X : in std_logic_vector ( N-1 downto 0 );
				Y : out std_logic_vector ( N-1 downto 0 );
				ShiftCount : in unsigned (5 downto 0 ));
end entity SRL64;

architecture rtl of SRL64 is

	signal mux1y, mux2y, mux3y : std_logic_vector(N-1 downto 0);
	
begin

MUX1 : 	with 	ShiftCount( 1 downto 0 ) select 
					mux1y <= X when "00",
							std_logic_vector(shift_right(unsigned(X), 1)) when "01",
							std_logic_vector(shift_right(unsigned(X), 2)) when "10",
							std_logic_vector(shift_right(unsigned(X), 3)) when others; -- "11"

MUX2 : 	with 	ShiftCount( 3 downto 2 ) select 
					mux2y <= X when "00",
							std_logic_vector(shift_right(unsigned(mux1y), 4)) when "01",
							std_logic_vector(shift_right(unsigned(mux1y), 8)) when "10",
							std_logic_vector(shift_right(unsigned(mux1y), 12)) when others; -- "11"

MUX3 : 	with 	ShiftCount( 5 downto 4 ) select 
					mux3y <= X when "00",
							std_logic_vector(shift_right(unsigned(mux2y), 16)) when "01",
							std_logic_vector(shift_right(unsigned(mux2y), 32)) when "10",
							std_logic_vector(shift_right(unsigned(mux2y), 48)) when others;  -- "11"

--MUX1 : 	with ShiftCount( 5 downto 4 ) select 
--				mux1y <= X when "00",
--				mux1y <= '0' & X(N-1 downto 1) when "01",
--				mux1y <= (N-1 downto N-2 => 0, others => X(N-1 downto 3)) when "10",
--				mux1y <= (N-1 downto N-3 => 0, others => X(N-1 downto 3)) when others; -- "11"
--
--MUX2 : 	with ShiftCount( 3 downto 2 ) select 
--				mux2y <= X when "00",
--				mux2y <= (N-1 downto N-4 => 0, others => X(N-1 downto 4)) when "01",
--				mux2y <= (N-1 downto N-8 => 0, others => X(N-1 downto 8)) when "10",
--				mux2y <= (N-1 downto N-12 => 0, others => X(N-1 downto 12)) when others; -- "11"
--
--MUX3 : 	with ShiftCount( 1 downto 0 ) select 
--				mux3y <= X when "00",
--				mux3y <= (N-1 downto N-16 => 0, others => X(N-1 downto 16)) when "01",
--				mux3y <= (N-1 downto N-32 => 0, others => X(N-1 downto 32)) when "10",
--				mux3y <= (N-1 downto N-48 => 0, others => X(N-1 downto 48)) when others; -- "11"
				
	Y <= mux3y;

end architecture rtl;