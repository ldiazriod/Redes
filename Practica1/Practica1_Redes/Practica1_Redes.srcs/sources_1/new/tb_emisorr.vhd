library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_emisorr is
--  Port ( );
end tb_emisorr;

architecture Structural of tb_emisorr is
    component Emisor is
        Port (CLK, RST: in std_logic;
          data_in : in std_logic_vector(15 downto 0);
          final_bit_out: out std_logic);
    end component;
    signal CLK,RST,bit_outt: std_logic;
    signal data_in: std_logic_vector(15 downto 0);
begin
    sender: emisor port map(CLK=>CLK, RST=>RST,
                            data_in=>data_in,
                            final_bit_out=>bit_outt); 

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
        data_in <= "1101011010110101"; wait;
        
    end process;
    
end Structural;