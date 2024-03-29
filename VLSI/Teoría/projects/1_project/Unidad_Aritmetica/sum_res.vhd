library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
entity sum_res is port(
	a,b: in std_logic_vector(2 downto 0);
	s0: in std_logic_vector (1 downto 0);
	cin: in std_logic;
	salsum: out std_logic_vector(2 downto 0);
	cout: out std_logic
);
end sum_res;

architecture arq_sum_res of sum_res is
signal sal: std_logic_vector(2 downto 0);
begin 
	u1: entity work.mux4x1(arqmux) port map(b,s0,sal);
	u2: entity work.sum(arqsum) port map (a, sal, cin,salsum, cout);

end arq_sum_res;