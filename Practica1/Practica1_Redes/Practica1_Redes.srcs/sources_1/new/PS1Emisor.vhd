library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity PS1Emisor is
     port( Q : in std_logic_vector(35 downto 0);
          enable: in std_logic;
          beginPS: in std_logic;
          CLK, RST : in std_logic;
          bit_out: out std_logic);
end PS1Emisor;

architecture Behavioral of PS1Emisor is
    signal content: std_logic_vector(35 downto 0) := (others=>'0');
    signal enab: std_logic :='1';


begin
    process(CLK, enable, Q, beginPS) begin
        if(rising_edge(CLK)) then
            if (RST = '1') then
                --content <= (others => '0');
            else
                if(beginPS='1')then
                    if(enab = '1')then 
                        enab <= '0';
                        content<=Q;
                    elsif(enable='0' and enab='0') then
                        bit_out <= content(35);
                        content <= content(34 downto 0) & '0'; 
                    end if;
                end if;
            end if;
        end if;
    end process;
end Behavioral;
