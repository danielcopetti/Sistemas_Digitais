library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity som16x16 is
	port( 	ent0, ent1 		: in std_logic_vector(15 downto 0); 
		outt 			: out std_logic_vector(15 downto 0));
end;

architecture som of som16 is

	begin
    		outt std_logic_vector <= (unsigned (in0) + unsigned(in1))
	end;
end architecture;
