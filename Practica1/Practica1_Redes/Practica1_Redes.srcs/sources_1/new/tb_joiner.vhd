library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_joiner is
--  Port ( );
end tb_joiner;

architecture Structural of tb_joiner is
    component joiner is
        Port (CLK, RST: in std_logic;
          enable:   in std_logic;
          stuffed_bits: in integer;
          data_in:  in std_logic_vector(111 downto 0);
          end_joiner: out std_logic;
          data_out: out std_logic_vector(255 downto 0));
    end component;
    
    signal data_in:   std_logic_vector(111 downto 0);
    signal data_out:  std_logic_vector(255 downto 0);
    signal aux:       std_logic_vector(75 downto 0) := (others => '0');
    signal enable, end_joiner, CLK, RST : std_logic;
    signal stuffed_bits: integer;
begin
    join:   joiner port map(CLK=>CLK, RST=>RST, enable=>enable, stuffed_bits=>stuffed_bits,
                            data_in=>data_in,end_joiner=>end_joiner, data_out=>data_out);
    process begin
        RST <= '1'; wait for 20 ns;
        RST <= '0'; wait;
    end process;
    process begin
        stuffed_bits <= 36; wait;
    end process;
    process begin
        CLK <= '1'; wait for 10ns;
        CLK <= '0'; wait for 10ns;
    end process;
    process begin
        data_in <= ("110101100110101100110101100110000001" & aux); wait;
    end process;
    process begin
        enable <= '1'; wait;
    end process;

end Structural;
