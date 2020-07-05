library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity joiner is
    Port (CLK, RST: in std_logic;
          enable:   in std_logic;
          stuffed_bits: in integer;
          data_in:  in std_logic_vector(111 downto 0);
          end_joiner: out std_logic;
          data_out: out std_logic_vector(255 downto 0));
end joiner;

architecture Behavioral of joiner is

    signal preambulo_inicio: std_logic_vector(7 downto 0) := "01010111";
    signal dni_Rocio:  std_logic_vector(25 downto 0):= "11000011000111000010110011";
    signal dni_Nacho: std_logic_vector(25 downto 0) := "11000010111111101101011000";
    signal preambulo_final: std_logic_vector(7 downto 0) := "01000001";
    signal aux: std_logic_vector(37 downto 0) := (others => '0'); --Para rellenar hasta 8 bytes las direcciones(dnis)
    signal data_aux: std_logic_vector(255 downto 0):= (others=>'0');
    signal data: std_logic_vector(111 downto 0):= (others=>'0');
    signal count_s: integer :=36;
    
begin
    count_s <= stuffed_bits;
    data_out<= data_aux;
    process(CLK, data_in, enable) begin
        if(rising_edge(CLK)) then
            if(RST = '1') then
                --data_out <= (others => '0');
            else
                
                if(enable = '1') then   

                    -- cambiamos 40 bits porq el max de bitstuffing puede ser como mucho 4 bits
                    data(111) <= data_in(72);
                    data(110) <= data_in(73);
                    data(109) <= data_in(74);
                    data(108) <= data_in(75);
                    data(107) <= data_in(76);
                    data(106) <= data_in(77);
                    data(105) <= data_in(78);
                    data(104) <= data_in(79);
                    data(103) <= data_in(80);
                    data(102) <= data_in(81);
                    data(101) <= data_in(82);
                    data(100) <= data_in(83);
                    data(99) <= data_in(84);
                    data(98) <= data_in(85);
                    data(97) <= data_in(86);
                    data(96) <= data_in(87);
                    data(95) <= data_in(88);
                    data(94) <= data_in(89);
                    data(93) <= data_in(90);
                    data(92) <= data_in(91);
                    data(91) <= data_in(92);
                    data(90) <= data_in(93);
                    data(89) <= data_in(94);
                    data(88) <= data_in(95);
                    data(87) <= data_in(96);
                    data(86) <= data_in(97);
                    data(85) <= data_in(98);
                    data(84) <= data_in(99);
                    data(83) <= data_in(100);
                    data(82) <= data_in(101);
                    data(81) <= data_in(102);
                    data(80) <= data_in(103);
                    data(79) <= data_in(104);
                    data(78) <= data_in(105);
                    data(77) <= data_in(106);
                    data(76) <= data_in(107);
                    data(75) <= data_in(108);
                    data(74) <= data_in(109);
                    data(73) <= data_in(110);
                    data(72) <= data_in(111);
                    data(71 downto 0) <= data_in(71 downto 0);
                           -- para que sintetice
--                         data_aux <= (preambulo_inicio & 
--                                     aux & dni_Rocio & 
--                                     aux & dni_Nacho &
--                                     data(111 downto 0)
--                                        & 
--                                     preambulo_final);
                        -- para que simule
                        data_aux <= (preambulo_inicio & 
                                     aux & dni_Rocio & 
                                     aux & dni_Nacho &
                                     data(111-(40-count_s) downto 72)
                                        &data(111 downto 72+count_s)
                                        &data(71 downto 0)& 
                                     preambulo_final);
                          end_joiner<='1';
                end if;
            end if;
        end if;
    end process;
end Behavioral;
