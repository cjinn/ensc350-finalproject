
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
