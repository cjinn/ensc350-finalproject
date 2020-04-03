library ieee;
Use ieee.std_logic_1164.all;
Use std.TEXTIO.all;
Use ieee.numeric_std.all;

Entity ArithUnit is
  Generic ( N : natural := 64 );
  Port (
    A       : in std_logic_vector(N-1 downto 0);
    B       : in std_logic_vector(N-1 downto 0);
    Add'Sub : in std_logic;
    NotA    : in std_logic;
    ExtWord : in std_logic;

    Y       : out std_logic_vector(N-1 downto 0));
    AtlBu   : out std_logic_vector(N-1 downto 0));
    AtlB    : out std_logic_vector(N-1 downto 0));
End Entity ArithUnit;

Architecture rtl of ArithUnit is
  signal S : std_logic_vector(N-1 downto 0));
  
begin
  -- Multipler for B input
  with Add'Sub select
    Result <= B when "0",
              B when others; -- Needs work

    -- Multipler for A input
    with NotA select
    Result <= A when "0",
              A when others; -- Needs work

    -- Adder (Ripple for now)
    arithAdder:  entity work.adder(Ripple) generic map (16) 
      port map ( A, B, '0', S);
      
    -- Sign Extension
    with ExtWord select
      Y <=  S when "0",
            S when "1",
            '0' when others; -- Needs work
    
    -- AtlBu and AtlB
    -- Needs work



  
end Architecture rtl;
