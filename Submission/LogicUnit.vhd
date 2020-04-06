library ieee;
Use ieee.std_logic_1164.all;
Use ieee.numeric_std.all;
Use ieee.std_logic_arith.all;

Entity LogicUnit is
  Generic ( N : natural := 64 );
  Port (
    A       : in std_logic_vector(N-1 downto 0);
    B       : in std_logic_vector(N-1 downto 0);
    LogicFn : in std_logic_vector(1 downto 0);
	 
    Y       : out std_logic_vector(N-1 downto 0));
End Entity LogicUnit;

Architecture rtl of LogicUnit is
  signal AndAB  : std_logic_vector(N-1 downto 0);
  signal OrAB   : std_logic_vector(N-1 downto 0);
  signal XorAB  : std_logic_vector(N-1 downto 0);
begin
  LogicUnitAndGate  : entity Work.AndGate generic map(N) port map(A, B, AndAB);
  LogicUnitOrGate   : entity Work.OrGate generic map(N) port map(A, B, OrAB);
  LogicUnitXorGate  : entity Work.XorGate generic map(N) port map(A, B, XorAB);

  with LogicFn select
    Y <=  B when "00",
      XorAB when "01",
      OrAB  when "10",
      AndAB when "11",
      (others => 'X') when others;    
end rtl;

-----------------------------------------------------------------------------
-- AndGate
-----------------------------------------------------------------------------

library ieee;
Use ieee.std_logic_1164.all;
Use ieee.numeric_std.all;
Use ieee.std_logic_arith.all;

Entity AndGate is
  Generic ( N: natural := 64);
  Port(
    A       : in std_logic_vector(N-1 downto 0);
    B       : in std_logic_vector(N-1 downto 0);
    Result  : out std_logic_vector(N-1 downto 0));
End Entity AndGate;

Architecture rtl of AndGate is
begin
  AndGateIterate: for i in 0 to N-1 generate
    Result(i) <= A(i) and B(i);
  end generate AndGateIterate;
end rtl;

-----------------------------------------------------------------------------
-- OrGate
-----------------------------------------------------------------------------

library ieee;
Use ieee.std_logic_1164.all;
Use ieee.numeric_std.all;
Use ieee.std_logic_arith.all;

Entity OrGate is
  Generic ( N: natural := 64);
  Port(
    A       : in std_logic_vector(N-1 downto 0);
    B       : in std_logic_vector(N-1 downto 0);
    Result  : out std_logic_vector(N-1 downto 0));
End Entity OrGate;

Architecture rtl of OrGate is
begin
  OrGateIterate: for i in 0 to N-1 generate
    Result(i) <= A(i) or B(i);
  end generate OrGateIterate;
end rtl;

-----------------------------------------------------------------------------
-- XorGate
-----------------------------------------------------------------------------

library ieee;
Use ieee.std_logic_1164.all;
Use ieee.numeric_std.all;
Use ieee.std_logic_arith.all;

Entity XorGate is
  Generic ( N: natural := 64);
  Port(
    A       : in std_logic_vector(N-1 downto 0);
    B       : in std_logic_vector(N-1 downto 0);
    Result  : out std_logic_vector(N-1 downto 0));
End Entity XorGate;

Architecture rtl of XorGate is
begin
  XorGateIterate: for i in 0 to N-1 generate
    Result(i) <= A(i) xor B(i);
  end generate XorGateIterate;
end rtl;

