library ieee; 
use ieee.std_logic_1164.all;  
 
entity Adder is  
 Generic ( N : natural := 64 );
	port( 
		A, B : in std_logic_vector(N-1 downto 0 );  
	  Y : out std_logic_vector(N-1 downto 0 );
	  
	  Cin : in std_logic;
	  Cout : out std_logic;
	  Ovfl : out std_logic);
 end entity Adder;  
 
architecture rtl of Adder is
	signal s, h: std_logic_vector(N-1 downto 0);
	signal carryIn : std_logic_vector(N downto 0);
begin
	carryIn(0) <= Cin;

	adderLoop:	for i in 0 to N-1 generate
		s(i) <= (A(i) XOR B(i)) XOR carryIn(i);
		carryIn(i+1) <= ( ( A(i) XOR B(i) ) AND carryIn(i) ) OR ( A(i) AND B(i) );
		
		Y(i) <= s(i);
	end generate adderLoop;
	
	Cout <= carryIn(N);
	Ovfl <= carryIn(N-1) XOR carryIn(N);
end architecture rtl;
