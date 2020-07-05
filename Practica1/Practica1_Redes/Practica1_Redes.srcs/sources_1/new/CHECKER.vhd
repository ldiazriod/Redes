library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity CHECKER is
   Port (CLK,RST: in std_logic;
         enable: in std_logic;
         data_in: in std_logic_vector(255 downto 0);
         end_signalCHECKER: out std_logic;
         data_out: out std_logic_vector(111 downto 0)); -- de aqui sale msj + bs + padding solo
end CHECKER;

architecture Behavioral of CHECKER is
    signal preambulo_inicio: std_logic_vector(7 downto 0) := "01010111";
    signal dni_Nacho: std_logic_vector(25 downto 0) := "11000010111111101101011000";
    signal preambulo_final: std_logic_vector(7 downto 0) := "01000001";
    signal aux: std_logic_vector(37 downto 0) := (others => '0'); --Para rellenar las direcciones(dnis)
begin
--data_aux <= (preambulo_inicio & aux & dni_Rocio & aux & dni_Nacho & data_in & preambulo_final);
    process(CLK,data_in, enable)begin
        if(rising_edge(CLK))then
            if(RST='1')then
                data_out <= (others=>'0');
            else
                if(data_in(255 downto 248) = preambulo_inicio)then
                    if(data_in(7 downto 0)=preambulo_final)then
                        if(data_in(183 downto 120) = aux & dni_Nacho)then
                            data_out <= data_in(119 downto 8);
                            end_signalCHECKER <= '1';
                        end if;
                    end if;
                end if;
            end if;
        end if;
    end process;
end Behavioral;
