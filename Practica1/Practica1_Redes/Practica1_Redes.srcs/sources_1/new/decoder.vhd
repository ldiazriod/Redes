library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decoder is
Port    (data_in : in  std_logic_vector(8 downto 0);
         data_out: out std_logic_vector(4 downto 0));
end decoder;

architecture Behavioral of decoder is

component encoder is 
    port (data_in: in std_logic_vector(4 downto 0);
          data_out: out std_logic_vector(8 downto 0));
end component;
    signal in_encoder: std_logic_vector(4 downto 0);
    signal out_encoder: std_logic_vector(8 downto 0 );
    signal parity_in: std_logic_vector(3 downto 0);
    signal parity_encoder: std_logic_vector(3 downto 0);
    signal parity_comparation: std_logic_vector(3 downto 0);
begin
    in_encoder <= data_in(6) & data_in(4)& data_in(3)& data_in(2)& data_in(0);
    encode: encoder port map(data_in => in_encoder, 
                             data_out => out_encoder); 
                             
     parity_in <= data_in(1)& data_in(5) & data_in(7) & data_in(8);
     parity_encoder <= out_encoder(1) & out_encoder(5) & out_encoder(7) & out_encoder(8);
     parity_comparation <= parity_in xor parity_encoder;
     
    process (parity_comparation)
    begin
        case parity_comparation is 
            when    "0011" =>       data_out(4) <= not in_encoder(4);
                                    data_out(3) <= in_encoder(3);
                                    data_out(2) <= in_encoder(2);
                                    data_out(1) <= in_encoder(1);
                                    data_out(0) <= in_encoder(0);
                                    
            when    "0101" =>       data_out(4) <= in_encoder(4);
                                    data_out(3) <= not in_encoder(3);
                                    data_out(2) <= in_encoder(2);
                                    data_out(1) <= in_encoder(1);
                                    data_out(0) <= in_encoder(0);
                                    
            when    "0110" =>       data_out(4) <= in_encoder(4);
                                    data_out(3) <= in_encoder(3);
                                    data_out(2) <= not in_encoder(2);
                                    data_out(1) <= in_encoder(1);
                                    data_out(0) <= in_encoder(0);
                                    
            when    "0111" =>       data_out(4) <= in_encoder(4);
                                    data_out(3) <= in_encoder(3);
                                    data_out(2) <= in_encoder(2);
                                    data_out(1) <= not in_encoder(1);
                                    data_out(0) <= in_encoder(0);
                                    
            when    "1001" =>       data_out(4) <= in_encoder(4);
                                    data_out(3) <= in_encoder(3);
                                    data_out(2) <= in_encoder(2);
                                    data_out(1) <= in_encoder(1);
                                    data_out(0) <= not in_encoder(0);

            when others => data_out <= in_encoder;
        end case;

    
    end process;


end Behavioral;
