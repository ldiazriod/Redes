library IEEE;
use IEEE.std_logic_1164.all;

entity tb_SP is
end entity tb_SP;

architecture Structural of tb_SP is
    component SP is
         port(CLK, RST, serial_in,begin_signal : in std_logic; 
         Q : out std_logic_vector(111 downto 0);
         end_signal: out std_logic);
    end component;
    
    signal CLK, RST, end_signal_fsm, serial_in, end_signal: std_logic;
    signal msj_padding : std_logic_vector(111 downto 0);-- Salidas UUT

begin

    SP1 : SP port map(CLK=>CLK, RST => RST, serial_in => serial_in,   
                      begin_signal=>end_signal_fsm, Q=>msj_padding, end_signal => end_signal);
    process begin
        RST <= '0'; wait;
    end process;

    process begin
        CLK <= '1'; wait for 10ns;
        CLK <= '0'; wait for 10ns;
    end process;
    
    process begin
        Serial_in <= '0'; wait for 20ns;
        Serial_in <= '0'; wait for 20ns;
        Serial_in <= '1'; wait for 20ns;
        Serial_in <= '1'; wait for 20ns;
        Serial_in <= '1'; wait for 20ns;
        Serial_in <= '0'; wait for 20ns;
        Serial_in <= '0'; wait for 20ns;
        Serial_in <= '1'; wait for 20ns;
        Serial_in <= '1'; wait for 20ns;
        Serial_in <= '1'; wait for 20ns;
        Serial_in <= '0'; wait for 20ns;
        Serial_in <= '0'; wait for 20ns;
        Serial_in <= '1'; wait for 20ns;
        Serial_in <= '1'; wait for 20ns;
        Serial_in <= '1'; wait for 20ns;
        Serial_in <= '0'; wait for 20ns;
        Serial_in <= '0'; wait for 20ns;
        Serial_in <= '1'; wait for 20ns;
        Serial_in <= '1'; wait for 20ns;
        Serial_in <= '1'; wait for 20ns;
        Serial_in <= '0'; wait for 20ns;
        Serial_in <= '0'; wait for 20ns;
        Serial_in <= '1'; wait for 20ns;
        Serial_in <= '1'; wait for 20ns;
        Serial_in <= '1'; wait for 20ns;
        Serial_in <= '0'; wait for 20ns;
        Serial_in <= '0'; wait for 20ns;
        Serial_in <= '1'; wait for 20ns;
        Serial_in <= '1'; wait for 20ns;
        Serial_in <= '1'; wait for 20ns;
        Serial_in <= '0'; wait for 20ns;
        Serial_in <= '0'; wait for 20ns;
        Serial_in <= '1'; wait for 20ns;
        Serial_in <= '1'; wait for 20ns;
        Serial_in <= '1'; wait for 20ns;
        Serial_in <= '1'; wait for 20ns;

    end process;
end architecture Structural;
