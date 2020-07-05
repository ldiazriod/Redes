library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity bitstuffingFSM is
        port (CLK, RST:   in  std_logic;
              bit_in: in  std_logic;
              bit_out:    out std_logic :='0';
              PS_control: out std_logic;
              end_signal: out std_logic;
              stuffed_bits: out integer := 0);      
end bitstuffingFSM;

architecture Behavioral of bitstuffingFSM is
    type state_type is(S0, S1, S2, S3, S4, S5, S6, S7, S8, S9, S10);
    signal current_state, next_state : state_type;

    signal counter: integer range 0 to 6 := 0; --solo bits de msj no bitstuffing
    signal count_stuffed: integer range 0 to 6:= 0;
    signal PS: std_logic := '0';

begin
    PS_control<= PS;
    stuffed_bits <= count_stuffed;
    process(CLK)begin
        if(rising_edge(CLK)) then
            if(RST = '1') then
                --PS <= '0';
                current_state <= S0;
            else
                current_state <= next_state;
            end if;
        end if;
    end process;
    
    process(CLK)begin
        if(rising_edge(CLK)) then
            if(RST = '0') then
                if(bit_in = '1' or bit_in ='0') then
                    if(counter <= 35) then
                        if(current_state /= S10) then
                            counter <= counter + 1;
                        end if;
                        count_stuffed <= count_stuffed + 1;
                    end if;
                    if(counter = 35)then
                        end_signal <= '1';
                    end if;                    
                end if;
            else
                counter <= 0;
            end if;
        end if;
    end process;
    process(current_state, bit_in)begin
    if(bit_in = '1' or bit_in ='0')then
        if(counter < 36) then
            case current_state is
                when S0 =>
                    PS <= '0';
                    bit_out <= bit_in;
                    if(bit_in = '0') then
                        next_state <= S1;
                    else
                        next_state <= S0;
                    end if;
                when S1 =>
                    PS <= '0';
                    bit_out <= bit_in;
                    if(bit_in = '1') then
                        next_state <= S2;
                    else
                        next_state <= S1;
                    end if;
                when S2 =>
                    PS <= '0';
                    bit_out <= bit_in;              
                    if(bit_in = '0') then
                        next_state <= S3;
                    else
                        next_state <= S0;
                    end if;
                when S3 =>
                    PS <= '0';
                    bit_out <= bit_in;
                    
                    if(bit_in = '0') then
                        next_state <= S7;
                    else
                        next_state <= S4;
                    end if;
                when S4 =>
                    PS <= '0';
                    bit_out <= bit_in;
                    if(bit_in = '0') then
                        next_state <= S5;
                    else 
                        next_state <= S0;
                    end if;
                when S5 =>
                PS <= '0';
                    bit_out <= bit_in;
                    if(bit_in = '0') then
                        next_state <= S1;
                    else 
                        next_state <= S6;
                    end if;
                when S6 =>
                    PS <= '0';
                    bit_out <= bit_in;
                    if(bit_in = '0') then
                        next_state <= S5;
                    else
                        
                        next_state <= S10;
                    end if;
               
                when S7 =>
                    PS <= '0';
                    bit_out <= bit_in;
                    if(bit_in = '0') then
                        next_state <= S8;
                    else
                        next_state <= S2;
                    end if;
                when S8 =>
                PS <= '0';
                    bit_out <= bit_in;
                    if(bit_in = '0') then
                        next_state <= S9;
                    else
                        next_state <= S2;
                    end if;
                when S9 =>
                    PS <= '0';
                    bit_out <= bit_in;
                    if(bit_in = '0') then    
                        next_state <= S10;
                    else
                        next_state <= S2;
                    end if;
               
                when S10 =>
                    next_state <= S0;
                    PS <= '1';
                    bit_out <= '0';
                    
                 when others =>
                    PS <= '0';
                    next_state <= S0;
             end case;
        else
            bit_out<='Z';
        end if;
    end if;
    end process;   
end Behavioral;
        