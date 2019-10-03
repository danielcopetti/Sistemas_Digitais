library IEEE;
use IEEE.std_logic_1164.all;

entity sum_sub_16bits is
	port(
      ent_A, ent_B: in std_logic_vector(15 downto 0);
        control   : in std_logic;
      	result    : out std_logic_vector(15 downto 0);
        cout      : out std_logic
    );
end entity;

architecture struct of sum_sub_16bits is
	signal sinalC: std_logic_vector(15 downto 0);
	signal sinalB: std_logic_vector(15 downto 0);
	begin
    
    sinalB(0)  <=  	ent_B(0) xor control;
	sinalB(1)  <=  	ent_B(1) xor control;    
	sinalB(2)  <=  	ent_B(2) xor control;
	sinalB(3)  <=  	ent_B(3) xor control;
	sinalB(4)  <=  	ent_B(4) xor control;
	sinalB(5)  <=  	ent_B(5) xor control;
	sinalB(6)  <=  	ent_B(6) xor control;
	sinalB(7)  <=  	ent_B(7) xor control;
	sinalB(8)  <=  	ent_B(8) xor control;
	sinalB(9)  <=  	ent_B(9) xor control;
	sinalB(10) <=  ent_B(10) xor control;
	sinalB(11) <=  ent_B(11) xor control;
	sinalB(12) <=  ent_B(12) xor control;
	sinalB(13) <=  ent_B(13) xor control;
	sinalB(14) <=  ent_B(14) xor control;
	sinalB(15) <=  ent_B(15) xor control;
    
    
	SC0:  entity work.sum_sub_16bits port map(a => ent_A(0),  b => sinalB(0),  cin => control,   		s => result(0),  cout => sinalC(0));
    SC1:  entity work.sum_sub_16bits port map(a => ent_A(1),  b => sinalB(1),  cin => sinalC(0),	s => result(1),  cout => sinalC(1));
	SC2:  entity work.sum_sub_16bits port map(a => ent_A(2),  b => sinalB(2),  cin => sinalC(1), 	s => result(2),  cout => sinalC(2));
	SC3:  entity work.sum_sub_16bits port map(a => ent_A(3),  b => sinalB(3),  cin => sinalC(2), 	s => result(3),  cout => sinalC(3));
	SC4:  entity work.sum_sub_16bits port map(a => ent_A(4),  b => sinalB(4),  cin => sinalC(3), 	s => result(4),  cout => sinalC(4));
	
    SC5:  entity work.sum_sub_16bits port map(a => ent_A(5),  b => sinalB(5),  cin => sinalC(4), 	s => result(5),  cout => sinalC(5));
    
	SC6:  entity work.sum_sub_16bits port map(a => ent_A(6),  b => sinalB(6),  cin => sinalC(5), 	s => result(6),  cout => sinalC(6));
	SC7:  entity work.sum_sub_16bits port map(a => ent_A(7),  b => sinalB(7),  cin => sinalC(6),	s => result(7),  cout => sinalC(7));
	SC8:  entity work.sum_sub_16bits port map(a => ent_A(8),  b => sinalB(8),  cin => sinalC(7),	s => result(8),  cout => sinalC(8));
	SC9:  entity work.sum_sub_16bits port map(a => ent_A(9),  b => sinalB(9),  cin => sinalC(8),	s => result(9),  cout => sinalC(9));
	SC10: entity work.sum_sub_16bits port map(a => ent_A(10), b => sinalB(10), cin => sinalC(9), 	s => result(10), cout => sinalC(10));
	SC11: entity work.sum_sub_16bits port map(a => ent_A(11), b => sinalB(11), cin => sinalC(10), 	s => result(11), cout => sinalC(11));
	SC12: entity work.sum_sub_16bits port map(a => ent_A(12), b => sinalB(12), cin => sinalC(11), 	s => result(12), cout => sinalC(12));
	SC13: entity work.sum_sub_16bits port map(a => ent_A(13), b => sinalB(13), cin => sinalC(12), 	s => result(13), cout => sinalC(13));  
	SC14: entity work.sum_sub_16bits port map(a => ent_A(14), b => sinalB(14), cin => sinalC(13), 	s => result(14), cout => sinalC(14));  
	SC15: entity work.sum_sub_16bits port map(a => ent_A(15), b => sinalB(15), cin => sinalC(14), 	s => result(15), cout => sinalC(15));    
    
    cout <= sinalC(15);
    
end architecture;