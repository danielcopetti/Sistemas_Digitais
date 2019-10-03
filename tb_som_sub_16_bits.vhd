library IEEE;
use IEEE.std_logic_1164.all;

entity TB_somador is
end TB_somador;

architecture teste of TB_somador is 
	signal TB_A		: std_logic_vector(15 downto 0);
    	signal TB_B		: std_logic_vector(15 downto 0);
    	signal TB_control	: std_logic;
    	signal TB_result	: std_logic_vector(15 downto 0);
    	signal TB_cout		: std_logic;

begin

	SSC4bits: entity work.sum_sub_16bits port map(ent_A => TB_A, ent_B => TB_B, control => TB_control, result => TB_result, cout => TB_cout);
    
    process
    begin
--SOMA--
    	TB_control <= '0';

	TB_A <= "0000000000001011";
        TB_B <= "0000000000000101";
        wait for 10 ns;

	TB_A <= "0000000000000101";
        TB_B <= "0000000000001010";
        wait for 10 ns;

	TB_A <= "0000000000000101";
        TB_B <= "0000000000001011";
        wait for 10 ns;

	TB_A <= "0000000000001111";
        TB_B <= "0000000000000001";
        wait for 10 ns;
        
        TB_A <= "0000000000000001";
        TB_B <= "0000000000001111";      
        wait for 10 ns;

--SUBTRACAO--
        TB_control <= '1';

	TB_A <= "0000000000000001";
        TB_B <= "0000000000001111";      
        wait for 10 ns;

	TB_A <= "0000000000001111";
        TB_B <= "0000000000001111";      
        wait for 10 ns;

	TB_A <= "0000000000000111";
        TB_B <= "0000000000001111";      
        wait for 10 ns;

        TB_A <= "0000000000000011";
        TB_B <= "0000000000001111";      
        wait ;        

	end process;


end architecture;
