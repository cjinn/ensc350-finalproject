-----------------------------------------------------------------------------
-- Declare the Input network that produces the Generate and Propagate signals
-----------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity GPnet is
  generic ( width : integer := 16 );
  port (
    X, Y     :     in     std_logic_vector(width-1 downto 0);
    G, P     :     out    std_logic_vector(width-1 downto 0) );
end entity GPnet;

architecture Structural of GPnet is
begin
  bitcell: for i in width-1 downto 0
  generate
  begin
    -- cellGi: entity Work.and2 port map ( X(i), Y(i), G(i) );
    -- cellPi: entity Work.xor2 port map ( X(i), Y(i), P(i) );
    G(i) <= X(i) and Y(i);
    P(i) <= X(i) xor Y(i);
  end generate bitcell;
end architecture Structural;

-----------------------------------------------------------------------------
-- Declare the Output network that produces the Sum bits. The output carry is
-- Labeled as an additional Sum Bit.
-----------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Snet is
  generic ( width : integer := 16 );
  port (
    P        :     in     std_logic_vector(width-1 downto 0);
    C        :     in     std_logic_vector(width downto 0);
    S        :     out    std_logic_vector(width downto 0) );
end entity Snet;

architecture Structural of Snet is
begin
  
  bitcell: for i in width-1 downto 0
  generate
  begin
    -- cellSi: entity Work.xor2 port map ( P(i), C(i), S(i) );
    S(i) <= P(i) xor C(i);
  end generate bitcell;
  
  S(width) <= C(width);
  
end architecture Structural;

-----------------------------------------------------------------------------
-- Declaration of an adder. The adder contains 3 entities. Different
-- architectures differ only in their Carry network. The adder can be used to
-- instantiate circuits of varying width. The default is 16-bits.
-----------------------------------------------------------------------------

library ieee;
Use ieee.std_logic_1164.all;
Use std.TEXTIO.all;
Use ieee.numeric_std.all;

entity Adder is
  generic ( width : integer := 64 );
  port (
    X, Y     :     in     std_logic_vector(width-1 downto 0);
    Cin      :     in     std_logic;
    S        :     out    std_logic_vector(width downto 0) );
end entity Adder;
  
-----------------------------------------------------------------------------
-- Declare the Carry network for the adder.
-----------------------------------------------------------------------------

library ieee;
Use ieee.std_logic_1164.all;
Use std.TEXTIO.all;
Use ieee.numeric_std.all;

entity Cnet is
  generic ( width : integer := 16 );
  port(
    G, P     :     in     std_logic_vector(width-1 downto 0);
    Cin      :     in     std_logic;
    C        :     out    std_logic_vector(width downto 0));
end entity Cnet;

-----------------------------------------------------------------------------
-- Students must Create the following Carry Network Architectures.
-----------------------------------------------------------------------------
architecture Ripple of Cnet is
  signal interC  : std_logic_vector(width downto 0); -- Don't read from output signal C
  signal tempWire   : std_logic_vector(width-1 downto 0);
begin
  interC(0) <= Cin;

	CpropGenerate: for index in 0 to width-1 generate
    -- Cpropi: entity Work.Cprop port map(G(index), P(index), interC(index), interWire(index + 1));
    tempWire(index) <= interC(index) and P(index);
    interC(index + 1) <= G(index) or tempWire(index);
  end generate CpropGenerate;
  
	C(width downto 0) <= interC(width downto 0);
end architecture Ripple;
