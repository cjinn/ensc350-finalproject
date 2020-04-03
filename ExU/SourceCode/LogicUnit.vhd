library ieee;
Use ieee.std_logic_1164.all;
Use std.TEXTIO.all;
Use ieee.numeric_std.all;

Entity LogicUnit is
  Generic ( N : natural := 64 );
  Port (
    A       : in std_logic_vector(N-1 downto 0);
    B       : in std_logic_vector(N-1 downto 0);
    LogicFn : in std_logic_vector(1 downto 0);
	 
    Result  : out std_logic_vector(N-1 downto 0));
End Entity LogicUnit;

Architecture rtl of LogicUnit is
begin
  with LogicFn select
    Result <= B when "00",
              A xor B when "01",
              A or B when "10",
              A and B when "11";
end rtl;
