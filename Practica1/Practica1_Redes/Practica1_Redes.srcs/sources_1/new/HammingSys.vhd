library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity HammingSys is
    Port (data_in : in std_logic_vector(15 downto 0);
          data_out: out std_logic_vector(15 downto 0));
end HammingSys;

architecture Behavioral of HammingSys is
    component decoder is 
        port (data_in : in  std_logic_vector(8 downto 0);
              data_out: out std_logic_vector(4 downto 0));
    end component;
    component encoder is 
    port (data_in: in std_logic_vector(4 downto 0);
          data_out: out std_logic_vector(8 downto 0));
    end component;
    signal in_encode : std_logic_vector(19 downto 0) := (OTHERS => '0');
    signal out_encode: std_logic_vector(35 downto 0);
    
    signal out_decode : std_logic_vector(19 downto 0);
begin
    in_encode(15 downto 0) <= data_in;
    encoder1: encoder port map(in_encode(19 downto 15), out_encode(35 downto 27));
    endoder2: encoder port map(in_encode(14 downto 10), out_encode(26 downto 18));
    encoder3: encoder port map(in_encode(9 downto 5), out_encode(17 downto 9));
    endocer4: encoder port map(in_encode(4 downto 0), out_encode(8 downto 0));
    
    
    decoder1: decoder port map(out_encode(35 downto 27), out_decode(19 downto 15));
    decoder2: decoder port map(out_encode(26 downto 18), out_decode(14 downto 10));
    decoder3: decoder port map(out_encode(17 downto 9), out_decode(9 downto 5));
    decoder4: decoder port map(out_encode(8 downto 0), out_decode(4 downto 0));
    
    data_out <= out_decode(15 downto 0);

end Behavioral;
