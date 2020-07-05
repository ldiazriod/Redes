library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_EMISOR_RECEPTOR is
--  Port ( );
end tb_EMISOR_RECEPTOR;

architecture Structural of tb_EMISOR_RECEPTOR is
    component emisor_receptor is
        Port (CLK, RST: in std_logic;
          data_in: in std_logic_vector(15 downto 0);
          data_out: out std_logic_vector(15 downto 0));
    end component;
    
    signal CLK,RST: std_logic;
    signal data_in, data_out:std_logic_vector(15 downto 0);
    
begin
    DUT: emisor_receptor port map(CLK=>CLK,RST=>RST, data_in=>data_in, data_out=>data_out);

    process begin
        RST <= '1'; wait for 20 ns;
        RST <= '0'; wait;
    end process;

    process begin
        CLK <= '1'; wait for 10ns;
        CLK <= '0'; wait for 10ns;
    end process;
    
    process begin
        --data_in<="1101001110010101"; wait;
        data_in <= "1001010010100101"; wait;
        
    end process;
end Structural;
