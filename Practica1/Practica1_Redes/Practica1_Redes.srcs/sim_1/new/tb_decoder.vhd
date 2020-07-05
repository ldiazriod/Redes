library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_decoder is
--  Port ( );
end tb_decoder;

architecture Behavioral of tb_decoder is
    component decoder is 
        port (data_in : in  std_logic_vector(8 downto 0);
              data_out: out std_logic_vector(4 downto 0));
    end component;
    signal aux_in: std_logic_vector(8 downto 0);
    signal aux_out: std_logic_vector(4 downto 0);
begin
    decode: decoder port map(aux_in, aux_out); 
     aux_in <= "001101111"; --deberia ser "001101011" ->"10101"
--    process
--    begin
--        aux_in <= "001110011"; wait;
--    end process;


end Behavioral;
