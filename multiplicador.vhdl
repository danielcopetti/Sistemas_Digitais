library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity mult16 is
	port( 	ent0, ent1 	: in std_logic_vector(15 downto 0);
		outt 		: out std_logic_vector(31 downto 0));
end;

architecture mult of mult16 is
	outf	:signal (31 downto 0)

	begin
    		outf std_logic_vector <= (unsigned (in0) * unsigned(in1))

		outt <= outf (15 downto 0);
	end;
end architecture;
