library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_receptor is
--  Port ( );
end tb_receptor;

architecture Structural of tb_receptor is
    component Receptor is
        Port (CLK,RST : in  std_logic;
              activate: in  std_logic;
              bit_in:   in  std_logic;
              msj:      out std_logic_vector(15 downto 0));
    end component;
    
    signal CLK,RST,activate, bit_in: std_logic;
    signal msj: std_logic_vector(15 downto 0);
begin
    R: Receptor port map(CLK=>CLK,RST=>RST,activate=>activate, 
                         bit_in=>bit_in, msj=>msj);
                         
    process begin
        RST <= '1'; wait for 20 ns;
        RST <= '0'; wait;
    end process;
    process begin
        activate <= '1'; wait;
    end process;
    process begin
        CLK <= '1'; wait for 10ns;
        CLK <= '0'; wait for 10ns;
    end process;
--    signal preambulo_inicio: std_logic_vector(7 downto 0) := "01010111";
--    signal dni_Rocio:  std_logic_vector(25 downto 0):= "11000011000111000010110011";
--    signal dni_Nacho: std_logic_vector(25 downto 0) := "11000010111111101101011000";
--    signal preambulo_final: std_logic_vector(7 downto 0) := "01000001";
--    signal aux: std_logic_vector(37 downto 0) := (others => '0');
    process begin
        bit_in <= '1'; wait for 20 ns; --bit pal reset (comodin jejejejejej)
        -------------------------------
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '1'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '1'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '1'; wait for 20 ns;
        bit_in <= '1'; wait for 20 ns;
        bit_in <= '1'; wait for 20 ns;
        --------------------------------
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '1'; wait for 20 ns;
        bit_in <= '1'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '1'; wait for 20 ns;
        bit_in <= '1'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '1'; wait for 20 ns;
        bit_in <= '1'; wait for 20 ns;
        bit_in <= '1'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '1'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '1'; wait for 20 ns;
        bit_in <= '1'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '1'; wait for 20 ns;
        bit_in <= '1'; wait for 20 ns; --dni before 0saux
        
        ------------------------------------
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '1'; wait for 20 ns;
        bit_in <= '1'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '1'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '1'; wait for 20 ns;
        bit_in <= '1'; wait for 20 ns;
        bit_in <= '1'; wait for 20 ns;
        bit_in <= '1'; wait for 20 ns;
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
        bit_in <= '0'; wait for 20 ns; --dni before 0saux
        ------------------------------------
        bit_in <= '1'; wait for 20 ns; -- primer bit de msj
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '1'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '1'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '1'; wait for 20 ns;
        bit_in <= '1'; wait for 20 ns;
         bit_in <= '0'; wait for 20 ns; -- bit de bit stuffing
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
        bit_in <= '0'; wait for 20 ns;-- ultimo bit de msj
        bit_in <= '0'; wait for 20 ns; 
        bit_in <= '0'; wait for 20 ns; -- primer bit de padding
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns; --ultimo bit de padding :)
        -------------------------------
        bit_in <= '0'; wait for 20 ns; --patron final
        bit_in <= '1'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '0'; wait for 20 ns;
        bit_in <= '1'; wait ;
        ----------------------------------
        
        
    end process;
                         

end Structural;
