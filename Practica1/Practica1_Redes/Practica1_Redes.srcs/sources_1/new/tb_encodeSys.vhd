library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity tb_encodeSys is
--  Port ( );
end tb_encodeSys;

architecture Structural of tb_encodeSys is
    component encoderSys is
        Port (data_in : in std_logic_vector(15 downto 0);
              data_out: out std_logic_vector(35 downto 0));
    end component;
    
    signal data_in: std_logic_vector(15 downto 0);
    signal data_out: std_logic_vector(35 downto 0);
begin
    enco: encoderSys port map(data_in, data_out);
    
    process begin
        data_in<="1101001110010101"; wait for 20 ns;
        data_in<="ZZZZZZZZZZZZZZZZ"; wait;
        --data_in <= "1101011010110101"; wait;       
    end process;

end Structural;
