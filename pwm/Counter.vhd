library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity counter is 
   port(Clock  : in std_logic;
      Q : out std_logic_vector(3 downto 0)); 
end entity; 


architecture behavior of counter is 
signal tmp: std_logic_vector(3 downto 0):="0000"; 
begin 
   process (Clock) 
    begin
		if (Clock'event and Clock = '1') then 
		if(tmp >= "0000" ) then
         tmp <= tmp - 1;
		else tmp <="1111";
      end if;
		end if;
   end process;
   Q <= tmp;
end architecture;