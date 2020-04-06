library ieee;
Use ieee.std_logic_1164.all;
Use std.TEXTIO.all;
Use ieee.numeric_std.all;

Entity ArithUnit is
  Generic ( N : natural := 64 );
  Port(
    A       : in std_logic_vector(N-1 downto 0);
    B       : in std_logic_vector(N-1 downto 0);
    AddnSub : in std_logic;
    NotA    : in std_logic;
    ExtWord : in std_logic;

    Y       : out std_logic_vector(N-1 downto 0);
    Cout    : out std_logic;
    Ovfl    : out std_logic;
    Zero    : out std_logic;
    AltB    : out std_logic;
    AltBu   : out std_logic);
End Entity ArithUnit;

Architecture rtl of ArithUnit is
  signal Sig_A : std_logic_vector(N-1 downto 0);
  signal Sig_B : std_logic_vector(N-1 downto 0);
  signal AdderOutput : std_logic_vector(N-1 downto 0);
  signal SgnExt : std_logic_vector(N-1 downto 0);

  signal overflow : std_logic;
  signal coutSignal : std_logic;
begin
  
	Sig_A <= A when (NotA = '0') else
		   Not A when (NotA = '1');   

	Sig_B <= B when (AddnSub = '0') else
		   Not B when (AddnSub = '1');
	   
    ArithAdder:  entity work.Adder(rtl) generic map (N)
      port map (Sig_A, Sig_B, AdderOutput, AddnSub, coutSignal, overflow);
    
  -- Sign Extension
	signExt: for i in 0 to 31 generate
		SgnExt(i) <= AdderOutput(i);
	end generate signExt;
	
	signExtLoop: for i in 32 to N-1 generate	
		SgnExt(i) <= AdderOutput(31);
	end generate signExtLoop;
	
  Y <= AdderOutput when (ExtWord = '0') else
    SgnExt when (ExtWord = '1');
	
	Zero <= '1' when AdderOutput = x"0000000000000000" else '0';
	Cout <= coutSignal;
	Ovfl <= overflow;
	AltBu <= NOT(coutSignal);
	AltB <= overflow xor AdderOutput(N-1);
end Architecture rtl;
