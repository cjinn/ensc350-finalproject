

 library ieee; 
 use ieee.std_logic_1164.all;  
 
 entity Adder is  
 Generic ( N : natural := 64 );
	port( 
	  A, B : in std_logic_vector(63 downto 0 );  
	  Y : out std_logic_vector(63 downto 0 );
	  
	  Cin : in std_logic;
	  Cout : out std_logic;
	  Ovfl : out std_logic
	  );
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

 -- http://www.c-jump.com/CIS77/CPU/Overflow/lecture.html#O01_0080_overfow_output - Overflow.

-- architecture rtl of Adder is  
 
	-- signal P, G: std_logic_vector(63 downto 0 );
	-- signal temp: std_logic;
	
 -- begin    
	-- temp <= Cin;
	-- Adder_loop: for i in 0 to 63	generate
	
	   -- P(i) <= A(i) xor B(i);  
	   -- G(i) <= A(i) and B(i);
	   -- Cout <= G(i) or (P(i) and temp);  
	   -- Y(i) <= P(i) xor temp;
	   
	   -- ifCond: if i > 1 generate
		-- Ovfl <= temp xor (G(i) or (P(i) and temp));
	   -- end generate ifCond;
	   
	   -- temp <= G(i) or (P(i) and temp);	-- temp <= Cout   

	-- end generate Adder_loop;
	
	-- -- Ovfl <= temp xor (G(i-1) or (P(i-1) and temp));
	
-- end architecture rtl;


