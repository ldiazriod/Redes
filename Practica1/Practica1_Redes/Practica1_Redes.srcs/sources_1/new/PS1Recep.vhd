library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity PS1Recep is
    Port (CLK,RST: in std_logic;
          data_in: in std_logic_vector(111 downto 0);
          enable: in std_logic;
          end_signal_PS1Recep: out std_logic;
          bit_out: out std_logic);
end PS1Recep;

architecture Behavioral of PS1Recep is
    signal content: std_logic_vector(111 downto 0):= data_in;
    signal counter: integer := 111;
    signal enab: std_logic := '1';
begin
    bit_out<= content(111);
    process(CLK,data_in, enable) begin
        if(rising_edge(CLK)) then
            if(RST = '1')then
                end_signal_PS1Recep <= '0';
            else
                if(enable = '1' )then
                    content <= data_in;
                    enab <= '0';
                    end_signal_PS1Recep <= '1';
                end if;
                if(enab = '0')then
                    content <= content(110 downto 0)& '0';    
                end if;
            end if;
        end if;
    end process;
    process(CLK)begin
        if(rising_edge(CLK)) then
            if(enab = '0') then
                if(counter > 0)then
                    counter <= counter -1;
                    
                end if;
            end if;
        end if;
    end process;
end Behavioral;
