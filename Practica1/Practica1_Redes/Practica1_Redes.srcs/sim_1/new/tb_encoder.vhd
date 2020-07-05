library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_encoder is
--  Port ( );
end tb_encoder;

architecture Behavioral of tb_encoder is
component encoder is 
    port (data_in: in std_logic_vector(4 downto 0);
          data_out: out std_logic_vector(8 downto 0));
end component;
signal aux_in: std_logic_vector(4 downto 0);
signal aux_out: std_logic_vector(8 downto 0);
begin
    encode: encoder port map(aux_in, aux_out); 
        process
        begin 
            aux_in <= "01001"; wait;
        end process;


end Behavioral;
