-----------------------------HAZARD---------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Hazard is
  port (
		  FowardAE, FowardBE: out std_logic;
		  RegWriteW: in std_logic;
		  WriteRegW, RsE, RtE: in std_logic_vector(4 downto 0)
		);

end Hazard;

architecture struct of Hazard is

begin
FowardAE<=
			'1' when ((RsE /= "00000") and (RsE = WriteRegW) and (RegWriteW = '1')) else
			'0';
			
FowardBE<=
			'1' when ((RtE /= "00000") and (RtE = WriteRegW) and (RegWriteW = '1')) else
			'0';
			
end struct;