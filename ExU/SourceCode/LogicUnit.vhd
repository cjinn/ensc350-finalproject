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
    Y <=  AndAB when "01",
          OrAB  when "10",
          XorAB when "11",
          B when others; -- Not sure if this is the best way     
end rtl;

Architecture structure of LogicUnit is
  signal AndAB  : std_logic_vector(N-1 downto 0);
  signal OrAB   : std_logic_vector(N-1 downto 0);
  signal XorAB  : std_logic_vector(N-1 downto 0);
begin
  LogicUnitAndGate  : entity Work.AndGate generic map(N) port map(A, B, AndAB);
  LogicUnitOrGate   : entity Work.OrGate generic map(N) port map(A, B, OrAB);
  LogicUnitXorGate  : entity Work.XorGate generic map(N) port map(A, B, XorAB);

  with LogicFn select
    Y <=  AndAB when "01",
          OrAB  when "10",
          XorAB when "11",
          B when others; -- Not sure if this is the best way     
end structure;
