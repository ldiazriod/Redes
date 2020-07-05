-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Fri Mar 13 13:38:46 2020
-- Host        : DESKTOP-32KK8H2 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               C:/Users/mruiz/Practica1_Redes/Practica1_Redes.sim/sim_1/synth/func/xsim/tb_bitstuffingFSM_func_synth.vhd
-- Design      : bitstuffingFSM
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bitstuffingFSM is
  port (
    bit_in : in STD_LOGIC;
    CLK : in STD_LOGIC;
    RST : in STD_LOGIC;
    bit_out : out STD_LOGIC;
    PS_control : out STD_LOGIC;
    total_bits : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of bitstuffingFSM : entity is true;
end bitstuffingFSM;

architecture STRUCTURE of bitstuffingFSM is
  signal CLK_IBUF : STD_LOGIC;
  signal CLK_IBUF_BUFG : STD_LOGIC;
  signal \FSM_sequential_next_state_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_next_state_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_next_state_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_next_state_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_next_state_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal RST_IBUF : STD_LOGIC;
  signal bit_in_IBUF : STD_LOGIC;
  signal bit_out_OBUF : STD_LOGIC;
  signal bit_out_reg_i_1_n_0 : STD_LOGIC;
  signal bit_out_reg_i_2_n_0 : STD_LOGIC;
  signal bit_out_reg_i_3_n_0 : STD_LOGIC;
  signal counter : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \counter_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[5]_i_2_n_0\ : STD_LOGIC;
  signal \counter_reg[5]_i_3_n_0\ : STD_LOGIC;
  signal \counter_reg[5]_i_4_n_0\ : STD_LOGIC;
  signal counter_stuffed : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \counter_stuffed_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \counter_stuffed_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \counter_stuffed_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \counter_stuffed_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \counter_stuffed_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \counter_stuffed_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \counter_stuffed_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \counter_stuffed_reg[6]_i_2_n_0\ : STD_LOGIC;
  signal current_state : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal next_state : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal total_bits_OBUF : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \total_bits_reg[6]_i_1_n_0\ : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[0]\ : label is "s3:0011,s4:0111,s2:0010,s10:1010,s1:0001,s0:0000,s9:0110,s7:0100,s6:1001,s8:0101,s5:1000";
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[1]\ : label is "s3:0011,s4:0111,s2:0010,s10:1010,s1:0001,s0:0000,s9:0110,s7:0100,s6:1001,s8:0101,s5:1000";
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[2]\ : label is "s3:0011,s4:0111,s2:0010,s10:1010,s1:0001,s0:0000,s9:0110,s7:0100,s6:1001,s8:0101,s5:1000";
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[3]\ : label is "s3:0011,s4:0111,s2:0010,s10:1010,s1:0001,s0:0000,s9:0110,s7:0100,s6:1001,s8:0101,s5:1000";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \FSM_sequential_next_state_reg[0]\ : label is "LD";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_next_state_reg[0]_i_1\ : label is "soft_lutpair5";
  attribute XILINX_LEGACY_PRIM of \FSM_sequential_next_state_reg[1]\ : label is "LD";
  attribute SOFT_HLUTNM of \FSM_sequential_next_state_reg[1]_i_1\ : label is "soft_lutpair6";
  attribute XILINX_LEGACY_PRIM of \FSM_sequential_next_state_reg[2]\ : label is "LD";
  attribute SOFT_HLUTNM of \FSM_sequential_next_state_reg[2]_i_1\ : label is "soft_lutpair5";
  attribute XILINX_LEGACY_PRIM of \FSM_sequential_next_state_reg[3]\ : label is "LD";
  attribute SOFT_HLUTNM of \FSM_sequential_next_state_reg[3]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \FSM_sequential_next_state_reg[3]_i_2\ : label is "soft_lutpair3";
  attribute XILINX_LEGACY_PRIM of bit_out_reg : label is "LD";
  attribute SOFT_HLUTNM of bit_out_reg_i_1 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of bit_out_reg_i_2 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of bit_out_reg_i_3 : label is "soft_lutpair2";
  attribute XILINX_LEGACY_PRIM of \counter_reg[0]\ : label is "LD";
  attribute SOFT_HLUTNM of \counter_reg[0]_i_1\ : label is "soft_lutpair1";
  attribute XILINX_LEGACY_PRIM of \counter_reg[1]\ : label is "LD";
  attribute SOFT_HLUTNM of \counter_reg[1]_i_1\ : label is "soft_lutpair1";
  attribute XILINX_LEGACY_PRIM of \counter_reg[2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \counter_reg[3]\ : label is "LD";
  attribute SOFT_HLUTNM of \counter_reg[3]_i_1\ : label is "soft_lutpair0";
  attribute XILINX_LEGACY_PRIM of \counter_reg[4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \counter_reg[5]\ : label is "LD";
  attribute SOFT_HLUTNM of \counter_reg[5]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \counter_reg[5]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \counter_reg[5]_i_4\ : label is "soft_lutpair8";
  attribute XILINX_LEGACY_PRIM of \counter_stuffed_reg[0]\ : label is "LD";
  attribute SOFT_HLUTNM of \counter_stuffed_reg[0]_i_1\ : label is "soft_lutpair2";
  attribute XILINX_LEGACY_PRIM of \counter_stuffed_reg[1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \counter_stuffed_reg[2]\ : label is "LD";
  attribute SOFT_HLUTNM of \counter_stuffed_reg[2]_i_1\ : label is "soft_lutpair4";
  attribute XILINX_LEGACY_PRIM of \counter_stuffed_reg[3]\ : label is "LD";
  attribute SOFT_HLUTNM of \counter_stuffed_reg[3]_i_1\ : label is "soft_lutpair4";
  attribute XILINX_LEGACY_PRIM of \counter_stuffed_reg[4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \counter_stuffed_reg[5]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \counter_stuffed_reg[6]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \total_bits_reg[0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \total_bits_reg[1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \total_bits_reg[2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \total_bits_reg[3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \total_bits_reg[4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \total_bits_reg[5]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \total_bits_reg[6]\ : label is "LD";
  attribute SOFT_HLUTNM of \total_bits_reg[6]_i_1\ : label is "soft_lutpair7";
begin
CLK_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => CLK_IBUF,
      O => CLK_IBUF_BUFG
    );
CLK_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => CLK,
      O => CLK_IBUF
    );
\FSM_sequential_current_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => next_state(0),
      Q => current_state(0),
      R => RST_IBUF
    );
\FSM_sequential_current_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => next_state(1),
      Q => current_state(1),
      R => RST_IBUF
    );
\FSM_sequential_current_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => next_state(2),
      Q => current_state(2),
      R => RST_IBUF
    );
\FSM_sequential_current_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => next_state(3),
      Q => current_state(3),
      R => RST_IBUF
    );
\FSM_sequential_next_state_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_sequential_next_state_reg[0]_i_1_n_0\,
      G => \FSM_sequential_next_state_reg[3]_i_2_n_0\,
      GE => '1',
      Q => next_state(0)
    );
\FSM_sequential_next_state_reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00093315"
    )
        port map (
      I0 => bit_in_IBUF,
      I1 => current_state(0),
      I2 => current_state(2),
      I3 => current_state(3),
      I4 => current_state(1),
      O => \FSM_sequential_next_state_reg[0]_i_1_n_0\
    );
\FSM_sequential_next_state_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_sequential_next_state_reg[1]_i_1_n_0\,
      G => \FSM_sequential_next_state_reg[3]_i_2_n_0\,
      GE => '1',
      Q => next_state(1)
    );
\FSM_sequential_next_state_reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08085E98"
    )
        port map (
      I0 => current_state(0),
      I1 => bit_in_IBUF,
      I2 => current_state(1),
      I3 => current_state(2),
      I4 => current_state(3),
      O => \FSM_sequential_next_state_reg[1]_i_1_n_0\
    );
\FSM_sequential_next_state_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_sequential_next_state_reg[2]_i_1_n_0\,
      G => \FSM_sequential_next_state_reg[3]_i_2_n_0\,
      GE => '1',
      Q => next_state(2)
    );
\FSM_sequential_next_state_reg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01010C00"
    )
        port map (
      I0 => bit_in_IBUF,
      I1 => current_state(1),
      I2 => current_state(3),
      I3 => current_state(0),
      I4 => current_state(2),
      O => \FSM_sequential_next_state_reg[2]_i_1_n_0\
    );
\FSM_sequential_next_state_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_sequential_next_state_reg[3]_i_1_n_0\,
      G => \FSM_sequential_next_state_reg[3]_i_2_n_0\,
      GE => '1',
      Q => next_state(3)
    );
\FSM_sequential_next_state_reg[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30302C20"
    )
        port map (
      I0 => current_state(0),
      I1 => current_state(1),
      I2 => current_state(3),
      I3 => current_state(2),
      I4 => bit_in_IBUF,
      O => \FSM_sequential_next_state_reg[3]_i_1_n_0\
    );
\FSM_sequential_next_state_reg[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01FF"
    )
        port map (
      I0 => counter(2),
      I1 => counter(3),
      I2 => counter(4),
      I3 => counter(5),
      O => \FSM_sequential_next_state_reg[3]_i_2_n_0\
    );
PS_control_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => PS_control
    );
RST_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => RST,
      O => RST_IBUF
    );
bit_in_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => bit_in,
      O => bit_in_IBUF
    );
bit_out_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => bit_out_OBUF,
      O => bit_out
    );
bit_out_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => bit_out_reg_i_1_n_0,
      G => bit_out_reg_i_2_n_0,
      GE => '1',
      Q => bit_out_OBUF
    );
bit_out_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5700"
    )
        port map (
      I0 => current_state(3),
      I1 => current_state(1),
      I2 => current_state(2),
      I3 => bit_in_IBUF,
      O => bit_out_reg_i_1_n_0
    );
bit_out_reg_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55570000"
    )
        port map (
      I0 => counter(5),
      I1 => counter(4),
      I2 => counter(3),
      I3 => counter(2),
      I4 => bit_out_reg_i_3_n_0,
      O => bit_out_reg_i_2_n_0
    );
bit_out_reg_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"337F"
    )
        port map (
      I0 => current_state(0),
      I1 => current_state(3),
      I2 => current_state(1),
      I3 => current_state(2),
      O => bit_out_reg_i_3_n_0
    );
\counter_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \counter_reg[0]_i_1_n_0\,
      G => \counter_reg[5]_i_2_n_0\,
      GE => '1',
      Q => counter(0)
    );
\counter_reg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0057"
    )
        port map (
      I0 => current_state(3),
      I1 => current_state(1),
      I2 => current_state(2),
      I3 => counter(0),
      O => \counter_reg[0]_i_1_n_0\
    );
\counter_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \counter_reg[1]_i_1_n_0\,
      G => \counter_reg[5]_i_2_n_0\,
      GE => '1',
      Q => counter(1)
    );
\counter_reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"001F1F00"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(1),
      I2 => current_state(3),
      I3 => counter(0),
      I4 => counter(1),
      O => \counter_reg[1]_i_1_n_0\
    );
\counter_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \counter_reg[2]_i_1_n_0\,
      G => \counter_reg[5]_i_2_n_0\,
      GE => '1',
      Q => counter(2)
    );
\counter_reg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"001F1F1F1F000000"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(1),
      I2 => current_state(3),
      I3 => counter(1),
      I4 => counter(0),
      I5 => counter(2),
      O => \counter_reg[2]_i_1_n_0\
    );
\counter_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \counter_reg[3]_i_1_n_0\,
      G => \counter_reg[5]_i_2_n_0\,
      GE => '1',
      Q => counter(3)
    );
\counter_reg[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F008000"
    )
        port map (
      I0 => counter(1),
      I1 => counter(0),
      I2 => counter(2),
      I3 => \counter_reg[5]_i_4_n_0\,
      I4 => counter(3),
      O => \counter_reg[3]_i_1_n_0\
    );
\counter_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \counter_reg[4]_i_1_n_0\,
      G => \counter_reg[5]_i_2_n_0\,
      GE => '1',
      Q => counter(4)
    );
\counter_reg[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF000080000000"
    )
        port map (
      I0 => counter(2),
      I1 => counter(0),
      I2 => counter(1),
      I3 => counter(3),
      I4 => \counter_reg[5]_i_4_n_0\,
      I5 => counter(4),
      O => \counter_reg[4]_i_1_n_0\
    );
\counter_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \counter_reg[5]_i_1_n_0\,
      G => \counter_reg[5]_i_2_n_0\,
      GE => '1',
      Q => counter(5)
    );
\counter_reg[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0B0B0BBB04040444"
    )
        port map (
      I0 => \counter_reg[5]_i_3_n_0\,
      I1 => counter(4),
      I2 => current_state(3),
      I3 => current_state(1),
      I4 => current_state(2),
      I5 => counter(5),
      O => \counter_reg[5]_i_1_n_0\
    );
\counter_reg[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55570000"
    )
        port map (
      I0 => counter(5),
      I1 => counter(4),
      I2 => counter(3),
      I3 => counter(2),
      I4 => \counter_reg[5]_i_4_n_0\,
      O => \counter_reg[5]_i_2_n_0\
    );
\counter_reg[5]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => counter(2),
      I1 => counter(0),
      I2 => counter(1),
      I3 => counter(3),
      O => \counter_reg[5]_i_3_n_0\
    );
\counter_reg[5]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(1),
      I2 => current_state(3),
      O => \counter_reg[5]_i_4_n_0\
    );
\counter_stuffed_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \counter_stuffed_reg[0]_i_1_n_0\,
      G => \FSM_sequential_next_state_reg[3]_i_2_n_0\,
      GE => '1',
      Q => counter_stuffed(0)
    );
\counter_stuffed_reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001F5F"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(1),
      I2 => current_state(3),
      I3 => current_state(0),
      I4 => counter_stuffed(0),
      O => \counter_stuffed_reg[0]_i_1_n_0\
    );
\counter_stuffed_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \counter_stuffed_reg[1]_i_1_n_0\,
      G => \FSM_sequential_next_state_reg[3]_i_2_n_0\,
      GE => '1',
      Q => counter_stuffed(1)
    );
\counter_stuffed_reg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000337F337F0000"
    )
        port map (
      I0 => current_state(0),
      I1 => current_state(3),
      I2 => current_state(1),
      I3 => current_state(2),
      I4 => counter_stuffed(0),
      I5 => counter_stuffed(1),
      O => \counter_stuffed_reg[1]_i_1_n_0\
    );
\counter_stuffed_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \counter_stuffed_reg[2]_i_1_n_0\,
      G => \FSM_sequential_next_state_reg[3]_i_2_n_0\,
      GE => '1',
      Q => counter_stuffed(2)
    );
\counter_stuffed_reg[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => bit_out_reg_i_3_n_0,
      I1 => counter_stuffed(1),
      I2 => counter_stuffed(0),
      I3 => counter_stuffed(2),
      O => \counter_stuffed_reg[2]_i_1_n_0\
    );
\counter_stuffed_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \counter_stuffed_reg[3]_i_1_n_0\,
      G => \FSM_sequential_next_state_reg[3]_i_2_n_0\,
      GE => '1',
      Q => counter_stuffed(3)
    );
\counter_stuffed_reg[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => bit_out_reg_i_3_n_0,
      I1 => counter_stuffed(2),
      I2 => counter_stuffed(0),
      I3 => counter_stuffed(1),
      I4 => counter_stuffed(3),
      O => \counter_stuffed_reg[3]_i_1_n_0\
    );
\counter_stuffed_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \counter_stuffed_reg[4]_i_1_n_0\,
      G => \FSM_sequential_next_state_reg[3]_i_2_n_0\,
      GE => '1',
      Q => counter_stuffed(4)
    );
\counter_stuffed_reg[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF000080000000"
    )
        port map (
      I0 => counter_stuffed(2),
      I1 => counter_stuffed(0),
      I2 => counter_stuffed(1),
      I3 => counter_stuffed(3),
      I4 => bit_out_reg_i_3_n_0,
      I5 => counter_stuffed(4),
      O => \counter_stuffed_reg[4]_i_1_n_0\
    );
\counter_stuffed_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \counter_stuffed_reg[5]_i_1_n_0\,
      G => \FSM_sequential_next_state_reg[3]_i_2_n_0\,
      GE => '1',
      Q => counter_stuffed(5)
    );
\counter_stuffed_reg[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02AA22AA01551155"
    )
        port map (
      I0 => \counter_stuffed_reg[6]_i_2_n_0\,
      I1 => current_state(2),
      I2 => current_state(1),
      I3 => current_state(3),
      I4 => current_state(0),
      I5 => counter_stuffed(5),
      O => \counter_stuffed_reg[5]_i_1_n_0\
    );
\counter_stuffed_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \counter_stuffed_reg[6]_i_1_n_0\,
      G => \FSM_sequential_next_state_reg[3]_i_2_n_0\,
      GE => '1',
      Q => counter_stuffed(6)
    );
\counter_stuffed_reg[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B040"
    )
        port map (
      I0 => \counter_stuffed_reg[6]_i_2_n_0\,
      I1 => counter_stuffed(5),
      I2 => bit_out_reg_i_3_n_0,
      I3 => counter_stuffed(6),
      O => \counter_stuffed_reg[6]_i_1_n_0\
    );
\counter_stuffed_reg[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => counter_stuffed(3),
      I1 => counter_stuffed(1),
      I2 => counter_stuffed(0),
      I3 => counter_stuffed(2),
      I4 => counter_stuffed(4),
      O => \counter_stuffed_reg[6]_i_2_n_0\
    );
\total_bits_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => total_bits_OBUF(0),
      O => total_bits(0)
    );
\total_bits_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => total_bits(10)
    );
\total_bits_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => total_bits(11)
    );
\total_bits_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => total_bits(12)
    );
\total_bits_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => total_bits(13)
    );
\total_bits_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => total_bits(14)
    );
\total_bits_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => total_bits(15)
    );
\total_bits_OBUF[16]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => total_bits(16)
    );
\total_bits_OBUF[17]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => total_bits(17)
    );
\total_bits_OBUF[18]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => total_bits(18)
    );
\total_bits_OBUF[19]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => total_bits(19)
    );
\total_bits_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => total_bits_OBUF(1),
      O => total_bits(1)
    );
\total_bits_OBUF[20]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => total_bits(20)
    );
\total_bits_OBUF[21]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => total_bits(21)
    );
\total_bits_OBUF[22]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => total_bits(22)
    );
\total_bits_OBUF[23]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => total_bits(23)
    );
\total_bits_OBUF[24]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => total_bits(24)
    );
\total_bits_OBUF[25]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => total_bits(25)
    );
\total_bits_OBUF[26]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => total_bits(26)
    );
\total_bits_OBUF[27]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => total_bits(27)
    );
\total_bits_OBUF[28]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => total_bits(28)
    );
\total_bits_OBUF[29]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => total_bits(29)
    );
\total_bits_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => total_bits_OBUF(2),
      O => total_bits(2)
    );
\total_bits_OBUF[30]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => total_bits(30)
    );
\total_bits_OBUF[31]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => total_bits(31)
    );
\total_bits_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => total_bits_OBUF(3),
      O => total_bits(3)
    );
\total_bits_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => total_bits_OBUF(4),
      O => total_bits(4)
    );
\total_bits_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => total_bits_OBUF(5),
      O => total_bits(5)
    );
\total_bits_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => total_bits_OBUF(6),
      O => total_bits(6)
    );
\total_bits_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => total_bits(7)
    );
\total_bits_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => total_bits(8)
    );
\total_bits_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => total_bits(9)
    );
\total_bits_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => counter_stuffed(0),
      G => \total_bits_reg[6]_i_1_n_0\,
      GE => '1',
      Q => total_bits_OBUF(0)
    );
\total_bits_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => counter_stuffed(1),
      G => \total_bits_reg[6]_i_1_n_0\,
      GE => '1',
      Q => total_bits_OBUF(1)
    );
\total_bits_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => counter_stuffed(2),
      G => \total_bits_reg[6]_i_1_n_0\,
      GE => '1',
      Q => total_bits_OBUF(2)
    );
\total_bits_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => counter_stuffed(3),
      G => \total_bits_reg[6]_i_1_n_0\,
      GE => '1',
      Q => total_bits_OBUF(3)
    );
\total_bits_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => counter_stuffed(4),
      G => \total_bits_reg[6]_i_1_n_0\,
      GE => '1',
      Q => total_bits_OBUF(4)
    );
\total_bits_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => counter_stuffed(5),
      G => \total_bits_reg[6]_i_1_n_0\,
      GE => '1',
      Q => total_bits_OBUF(5)
    );
\total_bits_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => counter_stuffed(6),
      G => \total_bits_reg[6]_i_1_n_0\,
      GE => '1',
      Q => total_bits_OBUF(6)
    );
\total_bits_reg[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F0E0"
    )
        port map (
      I0 => counter(4),
      I1 => counter(3),
      I2 => counter(5),
      I3 => counter(2),
      O => \total_bits_reg[6]_i_1_n_0\
    );
end STRUCTURE;
