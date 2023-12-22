library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity pwm is
port(clk:in std_logic;w: in std_logic_vector(3 downto 0);out_pulse: out std_logic);
end entity;

architecture behaviour of PWM is

signal out_period:std_logic_vector(3 downto 0);
signal out_tmp:std_logic_vector(3 downto 0);

	component counter is
		port(Clock : in std_logic; Q : out std_logic_vector(3 downto 0)); 
	end component;

begin

stage0: counter port map(clk,out_period(3 downto 0));

process(clk,out_period)
begin

if(clk'event and clk = '1')then 
if(out_period = "0000" )then out_tmp <= w ;
end if;
end if;

if(clk'event and clk ='1')then
if(w = "0000")then out_tmp <= "1111";
elsif(out_tmp > "0000")then out_tmp <= out_tmp - 1;
elsif(out_tmp /="0000")then out_tmp <= w;
end if;
end if;

if((out_tmp(3)='1' or out_tmp(2)='1')or( out_tmp(1)='1' or out_tmp(0)='1'))then out_pulse <= '1';
else out_pulse <='0';
end if;

end process;
end architecture;