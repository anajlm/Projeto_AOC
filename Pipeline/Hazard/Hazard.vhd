-----------------------------HAZARD---------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Hazard is
  port (clk: in std_logic;
		  FowardAE, FowardBE: out std_logic;
		  RegWriteW: in std_logic;
		  WriteRegW, RsE, RtE: in std_logic_vector(4 downto 0)
		);

end Hazard;

architecture struct of Hazard is

begin

process(clk)
	begin
	
		if((RsE /= "00000") and (RsE = WriteRegW) and (RegWriteW = '1')) then 
			FowardAE <= '1';
		else 
			FowardAE <= '0';
		end if;
	
	
		if((RtE /= "00000") and (RtE = WriteRegW) and (RegWriteW = '1')) then 
			FowardBE <= '1';
		else 
			FowardBE <= '0';
		end if;
	
end process;


end struct;