library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity unbitstuffingFSM is
    port (CLK, RST:   in  std_logic;
          bit_in:     in  std_logic;
          enable:     in  std_logic;
          data_out:   out std_logic_vector(35 downto 0));      
end unbitstuffingFSM;

architecture Behavioral of unbitstuffingFSM is
    type state_type is(S0, S1, S2, S3, S4, S5, S6, S7, S8, S9, S10, S11, S12);
    signal current_state, next_state : state_type;
    signal non_stuffedbit: std_logic;
    signal content: std_logic_vector(35 downto 0):= (others=>'0');
    signal counter: integer := 0;
begin
    process(CLK)begin
        if(rising_edge(CLK)) then
            if(RST = '1') then
                current_state <= S0;
                --counter <= 0;
            else
                current_state <= next_state;
            end if;
        end if;
    end process;
    process(current_state, bit_in, enable,non_stuffedbit)begin
        if(enable = '1')then
            case current_state is
                when S0 =>
                    non_stuffedbit<= '1';
                    if(bit_in = '0') then
                        next_state <= S1;
                    else 
                        next_state <= S0;
                    end if;
                when S1 =>
                    non_stuffedbit<= '1';
                    if(bit_in = '1') then
                        next_state <= S2;
                    else 
                        next_state <= S1;
                    end if;
                when S2 =>
                    non_stuffedbit<= '1';             
                    if(bit_in = '0') then
                        next_state <= S3;
                    else
                        next_state <= S0;
                    end if;
                when S3 =>
                    non_stuffedbit<= '1';
                    if(bit_in = '0') then
                        next_state <= S8;
                    else
                        next_state <= S4;
                    end if;
                when S4 =>
                    non_stuffedbit<= '1';
                    if(bit_in = '0') then
                        next_state <= S5;
                    else
                        next_state <= S0;
                    end if;
                when S5 =>
                    non_stuffedbit<= '1';
                    if(bit_in = '0') then
                        next_state <= S1;
                    else 
                        next_state <= S6;
                    end if;
                when S6 =>
                    non_stuffedbit<= '1';
                    if(bit_in = '0') then
                        next_state <= S5;
                    else
                        --next_state <= S7;
                        next_state <= S12;
                    end if;
--                when S7 =>
--                    non_stuffedbit<= '1';
--                    next_state <= S12;
                when S8 =>
                    non_stuffedbit<= '1';
                    if(bit_in = '0') then
                        next_state <= S9;
                    else
                        next_state <= S2;
                    end if;
                when S9 =>
                    non_stuffedbit<= '1';
                    if(bit_in = '0') then
                        next_state <= S10;
                    else
                        next_state <= S2;
                    end if;
                when S10 =>
                    non_stuffedbit<= '1';
                    if(bit_in = '0') then
                        --next_state <= S11;
                        next_state <= S12;
                    else
                        next_state <= S2;
                    end if;
--                when S11 =>
--                    non_stuffedbit<= '1';
--                    next_state <= S12;        
                when S12 =>
                    next_state <= S0;
                    non_stuffedbit<= '0';
                    
                 when others =>
                    non_stuffedbit<= '0';
                    next_state <= S0;
             end case;
         end if;
    end process; 
      
    process(CLK)begin
        if(rising_edge(CLK)) then
            if(enable = '1')then
                if(non_stuffedbit = '1')then
                    if(counter < 36) then
                        content<= content(34 downto 0) & bit_in;
                        counter <= counter + 1;
                    end if;
                end if;
                if(counter = 36)then
                    data_out<= content;
                end if;
            end if;
        end if;
    end process;
end Behavioral;
