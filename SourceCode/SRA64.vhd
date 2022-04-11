library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use STD.textio.all;

entity SRA64 is
	generic ( N : natural := 64 );
	port ( 	X : in std_logic_vector ( N-1 downto 0 );
			Y : out std_logic_vector ( N-1 downto 0 );
			ShiftCount : in unsigned (5 downto 0 ));
end entity SRA64;

architecture rtl of SRA64 is

	signal mux1y, mux2y, mux3y : std_logic_vector(N-1 downto 0) := (others => '0');
	
begin

MUX1 : 	with ShiftCount( 1 downto 0 ) select 
				mux1y <= X when "00",
						std_logic_vector(shift_right(signed(X), 1)) when "01",
						std_logic_vector(shift_right(signed(X), 2)) when "10",
						std_logic_vector(shift_right(signed(X), 3)) when others; -- "11"

MUX2 : 	with ShiftCount( 3 downto 2 ) select 
				mux2y <= X when "00",
							std_logic_vector(shift_right(signed(mux1y), 4)) when "01",
							std_logic_vector(shift_right(signed(mux1y), 8)) when "10",
							std_logic_vector(shift_right(signed(mux1y), 12)) when others; -- "11"

MUX3 : 	with ShiftCount( 5 downto 4 ) select 
				mux3y <= X when "00",
							std_logic_vector(shift_right(signed(mux2y), 16)) when "01",
							std_logic_vector(shift_right(signed(mux2y), 32)) when "10",
							std_logic_vector(shift_right(signed(mux2y), 48)) when others; -- "11"
				
	Y <= mux3y;
	
end architecture rtl;