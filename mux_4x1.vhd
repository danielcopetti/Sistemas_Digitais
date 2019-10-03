-- Code your design here
library IEEE;
use IEEE.std_logic_1164.all;

entity mux4x1 is
	port( 
      entNula, entA, entB, entC : in std_logic_vector (15 downto 0);
      M0: 					in std_logic_vector (1 downto 0);
      saida: 				out std_logic_vector (15 downto 0)
	);
end mux4x1;

architecture multiplexador of mux4x1 is
		signal state: std_logic_vector(15 downto 0);
	begin
		process(M0)
			begin
                if (M0 = "00") then
              		state <= entNula;
          	elsif (M0 = "01") then
          			state <= entA;
      		elsif (M0 = "10") then
      				state <= entB;
                elsif (M0 = "11") then
                	state <= entC;
				end if;
		end process;
        
		saida <= state;
end architecture;
