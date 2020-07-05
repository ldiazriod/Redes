library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_unbitsutffingFSM is
--  Port ( );
end tb_unbitsutffingFSM;

architecture Behavioral of tb_unbitsutffingFSM is
    component unbitstuffingFSM is
        port (CLK, RST:   in  std_logic;
          bit_in:     in  std_logic;
          enable:     in  std_logic;
          data_out:   out std_logic_vector(35 downto 0));  
    end component;
    signal CLK,RST,bit_in, enable, end_signal: std_logic;
    signal data_out: std_logic_vector(35  downto 0);
begin
    DUT: unbitstuffingFSM port map(CLK,RST,bit_in,enable,
                                   data_out);
    process begin
        RST <= '1'; wait for 20 ns;
        RST <= '0'; wait;
    end process;
    process begin
        enable <= '1'; wait;
    end process;

    process begin
        CLK <= '1'; wait for 10ns;
        CLK <= '0'; wait for 10ns;
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
         bit_in <= '0'; wait for 20 ns;
        bit_in <= '1'; wait for 20 ns;
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
         bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '1'; wait for 20 ns;
        bit_in <= '1'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '1'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '1'; wait for 20 ns; 
         bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '1'; wait for 20 ns;
        bit_in <= '1'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '1'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '1'; wait for 20 ns;
         bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '1'; wait for 20 ns;
        bit_in <= '1'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '1'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
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
