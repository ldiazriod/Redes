library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Emisor is
    Port (CLK, RST: in std_logic;
          data_in : in std_logic_vector(15 downto 0);
          end_emisor: out std_logic;
          final_bit_out: out std_logic);
end Emisor;

architecture Structural of Emisor is 
    component encoderSys is
         Port (data_in : in std_logic_vector(15 downto 0);
               data_out: out std_logic_vector(35 downto 0);
               endHamming: out std_logic);
    end component;
    component PS1Emisor is
        port(  CLK, RST : in std_logic;
               Q : in std_logic_vector(35 downto 0);
               enable: in std_logic;
               beginPS: in std_logic;
               bit_out: out std_logic);
    end component;
    component bitstuffingFSM is
       port (CLK, RST:   in  std_logic;
              bit_in: in  std_logic;
              bit_out:    out std_logic :='0';
              PS_control: out std_logic;
              end_signal: out std_logic;
              stuffed_bits: out integer := 0);      
    end component;
    component SP is
         port(CLK, RST, serial_in,begin_signal : in std_logic; 
         Q : out std_logic_vector(111 downto 0);
         end_signal: out std_logic);
    end component;
    component joiner is
        Port (CLK, RST: in std_logic;
          enable:   in std_logic;
          stuffed_bits: in integer;
          data_in:  in std_logic_vector(111 downto 0);
          end_joiner: out std_logic;
          data_out: out std_logic_vector(255 downto 0));
    end component;
    component PS2Emisor is
        port(CLK, RST: in std_logic; 
         enable : in std_logic;    
         Q : in std_logic_vector(255 downto 0);
         end_signal: out std_logic;
         bit_out: out std_logic);
    end component;
    
    signal encoder_out : std_logic_vector(35 downto 0);
    signal endHamming: std_logic;
    
    signal bit_outPS: std_logic;
    signal enable: std_logic :='0';
    
    signal bit_outFSM, PS_ctrl, end_signal_fsm: std_logic;
    signal stuffed_bits: integer;
    
    signal msj_padding : std_logic_vector(111 downto 0);-- Salidas UUT
    signal end_signalSP : std_logic;
    
    signal msj:  std_logic_vector(255 downto 0);
    signal end_signalJoiner: std_logic;
    
    signal end_signal_PS2: std_logic;
    signal final_bit: std_logic;

begin
    encode: encoderSys port map(data_in  => data_in,
                                data_out => encoder_out,
                                endHamming=>endHamming); 
    PS1:    PS1Emisor port map(CLK=>CLK, RST=>RST, Q=>encoder_out, 
                               enable=>PS_ctrl,beginPS=>endHamming, 
                               bit_out=>bit_outPS);                              
    FSM:   bitstuffingFSM port map(CLK => CLK, RST => RST,
                                    bit_in => bit_outPS,
                                    bit_out => bit_outFSM,
                                    PS_control => PS_ctrl, end_signal => end_signal_fsm,
                                    stuffed_bits => stuffed_bits);                             
    SP1 :   SP port map(CLK=>CLK, RST => RST, serial_in => bit_outFSM,   
                        begin_signal=>end_signal_fsm, Q=>msj_padding, end_signal => end_signalSP);                             
    join:   joiner port map(CLK=>CLK, RST=>RST, enable=>end_signalSP, 
                            stuffed_bits => stuffed_bits, data_in=>msj_padding, 
                            end_joiner=>end_signalJoiner, 
                            data_out=>msj); 
    PS2:    PS2Emisor port map(CLK=>CLK, RST=>RST, 
                               enable=>end_signalJoiner, 
                               Q=>msj, end_signal=>end_emisor, bit_out=>final_bit);
    final_bit_out <= final_bit;
end Structural;
