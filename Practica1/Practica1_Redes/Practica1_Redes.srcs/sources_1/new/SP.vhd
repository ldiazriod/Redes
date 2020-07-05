library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;

entity SP is
    port(CLK, RST, serial_in,begin_signal : in std_logic; 
         Q : out std_logic_vector(111 downto 0);
         end_signal: out std_logic);
end entity SP;
architecture SP of SP is
    signal content: std_logic_vector(111 downto 0):= (others => '0');
begin
    process(CLK, RST)
    begin
        if(rising_edge(CLK)) then
            if (RST = '1') then
                content <= (others => '0');
            else
               content <=  Serial_in & content(111 downto 1);-- desplazamiento derecha y rellena a la izqda con bits entrada Serial_in
            end if;
            
        end if;
    end process;
    end_signal <= begin_signal;
    Q <= content;
end architecture SP;
-----------------------------------------