library ieee;
Use ieee.std_logic_1164.all;
Use std.TEXTIO.all;
Use ieee.numeric_std.all;

Entity ArithUnit is
  Generic ( N : natural := 64 );
  Port (
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
  signal S : std_logic_vector(N-1 downto 0);
  
begin
  -- Multipler for B input
  with AddnSub select
    AltB <=   '0' when '0',
              '0' when others; -- Needs work

    -- Multipler for A input
    with NotA select
    AltBu <=  '0' when '0',
              '0' when others; -- Needs work

    -- Adder (Ripple for now)
    -- Needs work. Commented out for now
    --ArithAdder:  entity work.Cnet(Ripple) generic map (16) port map ( A, B, '0', S);
      
    -- Sign Extension
    with ExtWord select
      Y <=  S when '0',
            S when others; -- Needs work
    
    -- Placeholders
    Cout <= '0';
    Ovfl <= '0';
    Zero <= '0';
end Architecture rtl;

Architecture structure of ArithUnit is
  signal S : std_logic_vector(N-1 downto 0);
  
begin
  -- Multipler for B input
  with AddnSub select
    AltB <=   '0' when '0',
              '0' when others; -- Needs work

    -- Multipler for A input
    with NotA select
    AltBu <=  '0' when '0',
              '0' when others; -- Needs work

    -- Adder (Ripple for now)
    -- Needs work. Commented out for now
    --ArithAdder:  entity work.Cnet(Ripple) generic map (16) port map ( A, B, '0', S);
      
    -- Sign Extension
    with ExtWord select
      Y <=  S when '0',
            S when others; -- Needs work
    
    -- Placeholders
    Cout <= '0';
    Ovfl <= '0';
    Zero <= '0';
end Architecture structure;
