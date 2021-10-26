
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity EJ_1_S2 is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           D : in  STD_LOGIC;
           SALIDA : out  STD_LOGIC);
end EJ_1_S2;

architecture Behavioral of EJ_1_S2 is

	signal E,F,G,H,I,J,K,L,M,N,P : STD_LOGIC := '0';

begin

	process (E,A,B)
	begin
		E <= A AND B;
	end process;
	
	process (F,B,C)
	begin
		F <= B OR C;
	end process;
	
	process (G,C,D)
	begin
		G <= C XNOR D;
	end process;
	
	process (H,E,F)
	begin
		H <= E OR F;
	end process;
	
	process (I,G)
	begin
		I <= NOT G;
	end process;
	
	process (J,G,D)
	begin
		J <= G XNOR D ;
	end process;
	
	process (K,H,F)
	begin
		K <= H XNOR F;
	end process;
	
	process (L,H,I)
	begin
		L <= H AND I;
	end process;
	
	process (M,I,J)
	begin
		M <= I nand J;
	end process;
	
	process (N,K,L)
	begin
		N <= K nand L;
	end process;
	
	process (P,L,M)
	begin
		P <= L xor M;
	end process;
	
	process (N,P)
	begin
		SALIDA <= N nor P;
	end process;
	
end Behavioral;