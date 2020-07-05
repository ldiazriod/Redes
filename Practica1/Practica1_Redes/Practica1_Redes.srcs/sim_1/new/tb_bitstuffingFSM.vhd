library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_bitstuffingFSM is

end tb_bitstuffingFSM;

architecture Behavioral of tb_bitstuffingFSM is
    component bitstuffingFSM is
         port (CLK, RST:   in  std_logic;
              bit_in: in  std_logic;
              bit_out:    out std_logic :='0';
              PS_control: out std_logic :='0';
              end_signal: out std_logic;
              stuffed_bits: out integer := 0);   
    end component;
        signal bit_in, CLK, RST, bit_out, PS_control: std_logic;
begin
    DUT: bitstuffingFSM port map(bit_in => bit_in,
                                 CLK => CLK, RST => RST,
                                 bit_out => bit_out,
                                 PS_control => PS_control);
    
    process begin
        CLK <= '1'; wait for 10 ns;
        CLK <= '0'; wait for 10ns;
    end process;
    process begin
        RST <= '1'; wait for 20 ns;
        RST <= '0'; wait;
    end process;
    process begin
        bit_in <= '1'; wait for 20 ns;
        bit_in <= '1'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '1'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '1'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '1'; wait for 20 ns;
        bit_in <= '1'; wait for 20 ns;
        bit_in <= '1'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '1'; wait for 20 ns;
        bit_in <= '1'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '1'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '1'; wait for 20 ns;
        bit_in <= '1'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '1'; wait for 20 ns;
        bit_in <= '1'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '1'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '1'; wait for 20 ns;
        bit_in <= '1'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '1'; wait for 20 ns;
        bit_in <= '1'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '1'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '1'; wait for 20 ns;
        bit_in <= '1'; wait;
    end process;

end Behavioral;
