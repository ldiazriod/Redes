library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decodeSys is
    Port (data_in : in std_logic_vector(35 downto 0);
          data_out: out std_logic_vector(15 downto 0));
end decodeSys;

architecture Structural of decodeSys is
    component decoder is 
    port (data_in: in std_logic_vector(8 downto 0);
          data_out: out std_logic_vector(4 downto 0));         
    end component;
    signal in_decode : std_logic_vector(35 downto 0) := (OTHERS => '0');
    signal out_decode: std_logic_vector(19 downto 0);

begin
    in_decode(35 downto 0) <= data_in;
    decoder1: decoder port map(in_decode(35 downto 27), out_decode(19 downto 15));
    
    decoder2: decoder port map(in_decode(26 downto 18), out_decode(14 downto 10));
    
    decoder3: decoder port map(in_decode(17 downto 9), out_decode(9 downto 5));
    
    dedocer4: decoder port map(in_decode(8 downto 0), out_decode(4 downto 0));

    data_out <= out_decode(15 downto 0);

end Structural;
