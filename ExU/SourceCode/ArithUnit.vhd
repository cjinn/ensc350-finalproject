library ieee;
Use ieee.std_logic_1164.all;
Use std.TEXTIO.all;
Use ieee.numeric_std.all;

Entity ArithUnit is
  Generic ( N : natural := 64 );
  Port (
    A       : in std_logic_vector(N-1 downto 0);
    B       : in std_logic_vector(N-1 downto 0);
    AddSub  : in std_logic;
    NotA    : in std_logic;
    ExtWord : in std_logic;

    Y       : out std_logic_vector(N-1 downto 0);
    AtlBu   : out std_logic_vector(N-1 downto 0);
    AtlB    : out std_logic_vector(N-1 downto 0));
End Entity ArithUnit;

Architecture rtl of ArithUnit is
  signal S : std_logic_vector(N-1 downto 0);
  
begin
  -- Multipler for B input
  with AddSub select
    AtlBu <=  B when '0',
              B when others; -- Needs work

    -- Multipler for A input
    with NotA select
    AtlB <=   A when '0',
              A when others; -- Needs work

    -- Adder (Ripple for now)
    --ArithAdder:  entity work.Cnet(Ripple) generic map (16) port map ( A, B, '0', S);
      
    -- Sign Extension
    with ExtWord select
      Y <=  S when '0',
            S when others; -- Needs work
    
    -- AtlBu and AtlB
	 -- Needs work  
end Architecture rtl;

Architecture behavioural of ArithUnit is
  signal S : std_logic_vector(N-1 downto 0);
  
begin
  -- Multipler for B input
  with AddSub select
    AtlBu <=  B when '0',
              B when others; -- Needs work

    -- Multipler for A input
    with NotA select
    AtlB <=   A when '0',
              A when others; -- Needs work

    -- Adder (Ripple for now)
    -- Needs work. Commented out for now
    --ArithAdder:  entity work.Cnet(Ripple) generic map (16) port map ( A, B, '0', S);
      
    -- Sign Extension
    with ExtWord select
      Y <=  S when '0',
            S when others; -- Needs work
    
    -- AtlBu and AtlB
	 -- Needs work  
end Architecture behavioural;
