library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_hammingSys is
end tb_hammingSys;

architecture Structural of tb_hammingSys is
    component HammingSys is
         Port (data_in : in std_logic_vector(15 downto 0);
               data_out: out std_logic_vector(15 downto 0));
    end component;
    -- ---------------------------
    signal data_in : std_logic_vector(15 downto 0);
    signal data_out : std_logic_vector(15 downto 0);
    
    
begin
    hamming: HammingSys port map(data_in  => data_in,
                                 data_out => data_out);
    process begin
        data_in <= "1101011010110101"; wait;
    end process;

end Structural;
