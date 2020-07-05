library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity encoder is
Port   (data_in: in std_logic_vector(4 downto 0);
        data_out: out std_logic_vector(8 downto 0));
end encoder;

architecture Behavioral of encoder is

begin  
     data_out(8) <= data_in(4) xor  data_in(3) xor data_in(1) xor data_in(0);
     data_out(7) <= data_in(4) xor  data_in(2) xor data_in(1);
     data_out(5) <= data_in(3) xor  data_in(2) xor data_in(1);
     data_out(1) <= data_in(0);
     
     data_out(0) <= data_in(0);
     data_out(2) <= data_in(1);
     data_out(3) <= data_in(2);
     data_out(4) <= data_in(3);
     data_out(6) <= data_in(4); 

end Behavioral;
