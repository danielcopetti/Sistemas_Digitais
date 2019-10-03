-- Code your testbench here
library IEEE;
use IEEE.std_logic_1164.all;

entity TB_MUX_4x1 is
end TB_MUX_4x1;

architecture atv of TB_MUX_4x1 is
  signal TB_entNula, TB_entA, TB_entB, TB_entC : std_logic_vector (15 downto 0);  
  signal TB_M0: 							 	 std_logic_vector (1 downto 0);
  signal TB_saida: 							 	 std_logic_vector (15 downto 0);

  begin

  SSC4bits: entity work.mux4x1 port map(entNula => TB_entNula, entA => TB_entA, entB => TB_entB, entC => TB_entC, M0 => TB_M0, saida => TB_saida);

  process
    begin
    	TB_M0 <= "01";
	  
    	TB_entNula <= "0000000000100101";
    	TB_entA 	<= "0000000001000010";
  	TB_entB 	<= "0000000001000011";
    	TB_entC 	<= "0000000001000100";
    	wait for 10 ns;
    

	TB_M0 <= "11";
    
    	TB_entNula <= "0000000000000001";
    	TB_entA 	<= "0000000000000010";
   	TB_entB	<= "0000000000000011";
    	TB_entC 	<= "0000000000000100";
    	wait for 10 ns;
    

	TB_M0 <= "10";

    	TB_entNula <= "0000000000000101";
    	TB_entA 	<= "0000000000000010";
   	TB_entB 	<= "0000000000000011";
    	TB_entC 	<= "0000000000000100";
    	wait for 10 ns;
  
    	wait;
  end process;
end architecture;
