-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Sat Apr 11 11:16:19 2020
-- Host        : DESKTOP-32KK8H2 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               C:/Users/mruiz/Practica1_Redes/Practica1_Redes.sim/sim_1/synth/func/xsim/tb_receptor_func_synth.vhd
-- Design      : unbitstuffingFSM
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity unbitstuffingFSM is
  port (
    CLK : in STD_LOGIC;
    RST : in STD_LOGIC;
    bit_in : in STD_LOGIC;
    enable : in STD_LOGIC;
    data_out : out STD_LOGIC_VECTOR ( 35 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of unbitstuffingFSM : entity is true;
end unbitstuffingFSM;

architecture STRUCTURE of unbitstuffingFSM is
  signal CLK_IBUF : STD_LOGIC;
  signal CLK_IBUF_BUFG : STD_LOGIC;
  signal \FSM_onehot_current_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_current_state_reg_n_0_[10]\ : STD_LOGIC;
  signal \FSM_onehot_current_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_current_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_current_state_reg_n_0_[3]\ : STD_LOGIC;
  signal \FSM_onehot_current_state_reg_n_0_[4]\ : STD_LOGIC;
  signal \FSM_onehot_current_state_reg_n_0_[5]\ : STD_LOGIC;
  signal \FSM_onehot_current_state_reg_n_0_[6]\ : STD_LOGIC;
  signal \FSM_onehot_current_state_reg_n_0_[7]\ : STD_LOGIC;
  signal \FSM_onehot_current_state_reg_n_0_[8]\ : STD_LOGIC;
  signal \FSM_onehot_current_state_reg_n_0_[9]\ : STD_LOGIC;
  signal \FSM_onehot_next_state_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_next_state_reg[10]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_next_state_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_next_state_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_next_state_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_next_state_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_next_state_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_next_state_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_next_state_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_next_state_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_next_state_reg[9]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_next_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_next_state_reg_n_0_[10]\ : STD_LOGIC;
  signal \FSM_onehot_next_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_next_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_next_state_reg_n_0_[3]\ : STD_LOGIC;
  signal \FSM_onehot_next_state_reg_n_0_[4]\ : STD_LOGIC;
  signal \FSM_onehot_next_state_reg_n_0_[5]\ : STD_LOGIC;
  signal \FSM_onehot_next_state_reg_n_0_[6]\ : STD_LOGIC;
  signal \FSM_onehot_next_state_reg_n_0_[7]\ : STD_LOGIC;
  signal \FSM_onehot_next_state_reg_n_0_[8]\ : STD_LOGIC;
  signal \FSM_onehot_next_state_reg_n_0_[9]\ : STD_LOGIC;
  signal RST_IBUF : STD_LOGIC;
  signal bit_in_IBUF : STD_LOGIC;
  signal content : STD_LOGIC;
  signal \content[35]_i_10_n_0\ : STD_LOGIC;
  signal \content[35]_i_11_n_0\ : STD_LOGIC;
  signal \content[35]_i_13_n_0\ : STD_LOGIC;
  signal \content[35]_i_14_n_0\ : STD_LOGIC;
  signal \content[35]_i_15_n_0\ : STD_LOGIC;
  signal \content[35]_i_16_n_0\ : STD_LOGIC;
  signal \content[35]_i_17_n_0\ : STD_LOGIC;
  signal \content[35]_i_18_n_0\ : STD_LOGIC;
  signal \content[35]_i_19_n_0\ : STD_LOGIC;
  signal \content[35]_i_20_n_0\ : STD_LOGIC;
  signal \content[35]_i_21_n_0\ : STD_LOGIC;
  signal \content[35]_i_22_n_0\ : STD_LOGIC;
  signal \content[35]_i_4_n_0\ : STD_LOGIC;
  signal \content[35]_i_5_n_0\ : STD_LOGIC;
  signal \content[35]_i_6_n_0\ : STD_LOGIC;
  signal \content[35]_i_8_n_0\ : STD_LOGIC;
  signal \content[35]_i_9_n_0\ : STD_LOGIC;
  signal \content_reg[35]_i_12_n_0\ : STD_LOGIC;
  signal \content_reg[35]_i_12_n_1\ : STD_LOGIC;
  signal \content_reg[35]_i_12_n_2\ : STD_LOGIC;
  signal \content_reg[35]_i_12_n_3\ : STD_LOGIC;
  signal \content_reg[35]_i_2_n_1\ : STD_LOGIC;
  signal \content_reg[35]_i_2_n_2\ : STD_LOGIC;
  signal \content_reg[35]_i_2_n_3\ : STD_LOGIC;
  signal \content_reg[35]_i_3_n_0\ : STD_LOGIC;
  signal \content_reg[35]_i_3_n_1\ : STD_LOGIC;
  signal \content_reg[35]_i_3_n_2\ : STD_LOGIC;
  signal \content_reg[35]_i_3_n_3\ : STD_LOGIC;
  signal \content_reg[35]_i_7_n_0\ : STD_LOGIC;
  signal \content_reg[35]_i_7_n_1\ : STD_LOGIC;
  signal \content_reg[35]_i_7_n_2\ : STD_LOGIC;
  signal \content_reg[35]_i_7_n_3\ : STD_LOGIC;
  signal \content_reg_n_0_[35]\ : STD_LOGIC;
  signal \counter[0]_i_2_n_0\ : STD_LOGIC;
  signal counter_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \counter_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \data_out[35]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[35]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[35]_i_3_n_0\ : STD_LOGIC;
  signal \data_out[35]_i_4_n_0\ : STD_LOGIC;
  signal \data_out[35]_i_5_n_0\ : STD_LOGIC;
  signal \data_out[35]_i_6_n_0\ : STD_LOGIC;
  signal \data_out[35]_i_7_n_0\ : STD_LOGIC;
  signal data_out_OBUF : STD_LOGIC_VECTOR ( 35 downto 0 );
  signal enable_IBUF : STD_LOGIC;
  signal enable_IBUF_BUFG : STD_LOGIC;
  signal non_stuffedbit : STD_LOGIC;
  signal non_stuffedbit_reg_i_1_n_0 : STD_LOGIC;
  signal non_stuffedbit_reg_i_2_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 35 downto 1 );
  signal \NLW_content_reg[35]_i_12_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_content_reg[35]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_content_reg[35]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_content_reg[35]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_content_reg[35]_i_7_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_counter_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[0]\ : label is "s3:00000001000,s4:00010000000,s2:00000000100,s12:10000000000,s10:00001000000,s1:00000000010,s0:00000000001,s9:00000100000,s8:00000010000,s6:01000000000,s5:00100000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[10]\ : label is "s3:00000001000,s4:00010000000,s2:00000000100,s12:10000000000,s10:00001000000,s1:00000000010,s0:00000000001,s9:00000100000,s8:00000010000,s6:01000000000,s5:00100000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[1]\ : label is "s3:00000001000,s4:00010000000,s2:00000000100,s12:10000000000,s10:00001000000,s1:00000000010,s0:00000000001,s9:00000100000,s8:00000010000,s6:01000000000,s5:00100000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[2]\ : label is "s3:00000001000,s4:00010000000,s2:00000000100,s12:10000000000,s10:00001000000,s1:00000000010,s0:00000000001,s9:00000100000,s8:00000010000,s6:01000000000,s5:00100000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[3]\ : label is "s3:00000001000,s4:00010000000,s2:00000000100,s12:10000000000,s10:00001000000,s1:00000000010,s0:00000000001,s9:00000100000,s8:00000010000,s6:01000000000,s5:00100000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[4]\ : label is "s3:00000001000,s4:00010000000,s2:00000000100,s12:10000000000,s10:00001000000,s1:00000000010,s0:00000000001,s9:00000100000,s8:00000010000,s6:01000000000,s5:00100000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[5]\ : label is "s3:00000001000,s4:00010000000,s2:00000000100,s12:10000000000,s10:00001000000,s1:00000000010,s0:00000000001,s9:00000100000,s8:00000010000,s6:01000000000,s5:00100000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[6]\ : label is "s3:00000001000,s4:00010000000,s2:00000000100,s12:10000000000,s10:00001000000,s1:00000000010,s0:00000000001,s9:00000100000,s8:00000010000,s6:01000000000,s5:00100000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[7]\ : label is "s3:00000001000,s4:00010000000,s2:00000000100,s12:10000000000,s10:00001000000,s1:00000000010,s0:00000000001,s9:00000100000,s8:00000010000,s6:01000000000,s5:00100000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[8]\ : label is "s3:00000001000,s4:00010000000,s2:00000000100,s12:10000000000,s10:00001000000,s1:00000000010,s0:00000000001,s9:00000100000,s8:00000010000,s6:01000000000,s5:00100000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[9]\ : label is "s3:00000001000,s4:00010000000,s2:00000000100,s12:10000000000,s10:00001000000,s1:00000000010,s0:00000000001,s9:00000100000,s8:00000010000,s6:01000000000,s5:00100000000";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \FSM_onehot_next_state_reg[0]\ : label is "LD";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_next_state_reg[0]_i_1\ : label is "soft_lutpair1";
  attribute XILINX_LEGACY_PRIM of \FSM_onehot_next_state_reg[10]\ : label is "LD";
  attribute SOFT_HLUTNM of \FSM_onehot_next_state_reg[10]_i_1\ : label is "soft_lutpair4";
  attribute XILINX_LEGACY_PRIM of \FSM_onehot_next_state_reg[1]\ : label is "LD";
  attribute SOFT_HLUTNM of \FSM_onehot_next_state_reg[1]_i_1\ : label is "soft_lutpair3";
  attribute XILINX_LEGACY_PRIM of \FSM_onehot_next_state_reg[2]\ : label is "LD";
  attribute SOFT_HLUTNM of \FSM_onehot_next_state_reg[2]_i_1\ : label is "soft_lutpair0";
  attribute XILINX_LEGACY_PRIM of \FSM_onehot_next_state_reg[3]\ : label is "LD";
  attribute SOFT_HLUTNM of \FSM_onehot_next_state_reg[3]_i_1\ : label is "soft_lutpair1";
  attribute XILINX_LEGACY_PRIM of \FSM_onehot_next_state_reg[4]\ : label is "LD";
  attribute SOFT_HLUTNM of \FSM_onehot_next_state_reg[4]_i_1\ : label is "soft_lutpair5";
  attribute XILINX_LEGACY_PRIM of \FSM_onehot_next_state_reg[5]\ : label is "LD";
  attribute SOFT_HLUTNM of \FSM_onehot_next_state_reg[5]_i_1\ : label is "soft_lutpair5";
  attribute XILINX_LEGACY_PRIM of \FSM_onehot_next_state_reg[6]\ : label is "LD";
  attribute SOFT_HLUTNM of \FSM_onehot_next_state_reg[6]_i_1\ : label is "soft_lutpair0";
  attribute XILINX_LEGACY_PRIM of \FSM_onehot_next_state_reg[7]\ : label is "LD";
  attribute SOFT_HLUTNM of \FSM_onehot_next_state_reg[7]_i_1\ : label is "soft_lutpair2";
  attribute XILINX_LEGACY_PRIM of \FSM_onehot_next_state_reg[8]\ : label is "LD";
  attribute SOFT_HLUTNM of \FSM_onehot_next_state_reg[8]_i_1\ : label is "soft_lutpair4";
  attribute XILINX_LEGACY_PRIM of \FSM_onehot_next_state_reg[9]\ : label is "LD";
  attribute SOFT_HLUTNM of \FSM_onehot_next_state_reg[9]_i_1\ : label is "soft_lutpair3";
  attribute XILINX_LEGACY_PRIM of non_stuffedbit_reg : label is "LD";
  attribute SOFT_HLUTNM of non_stuffedbit_reg_i_2 : label is "soft_lutpair2";
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
\FSM_onehot_current_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \FSM_onehot_next_state_reg_n_0_[0]\,
      Q => \FSM_onehot_current_state_reg_n_0_[0]\,
      S => RST_IBUF
    );
\FSM_onehot_current_state_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \FSM_onehot_next_state_reg_n_0_[10]\,
      Q => \FSM_onehot_current_state_reg_n_0_[10]\,
      R => RST_IBUF
    );
\FSM_onehot_current_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \FSM_onehot_next_state_reg_n_0_[1]\,
      Q => \FSM_onehot_current_state_reg_n_0_[1]\,
      R => RST_IBUF
    );
\FSM_onehot_current_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \FSM_onehot_next_state_reg_n_0_[2]\,
      Q => \FSM_onehot_current_state_reg_n_0_[2]\,
      R => RST_IBUF
    );
\FSM_onehot_current_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \FSM_onehot_next_state_reg_n_0_[3]\,
      Q => \FSM_onehot_current_state_reg_n_0_[3]\,
      R => RST_IBUF
    );
\FSM_onehot_current_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \FSM_onehot_next_state_reg_n_0_[4]\,
      Q => \FSM_onehot_current_state_reg_n_0_[4]\,
      R => RST_IBUF
    );
\FSM_onehot_current_state_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \FSM_onehot_next_state_reg_n_0_[5]\,
      Q => \FSM_onehot_current_state_reg_n_0_[5]\,
      R => RST_IBUF
    );
\FSM_onehot_current_state_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \FSM_onehot_next_state_reg_n_0_[6]\,
      Q => \FSM_onehot_current_state_reg_n_0_[6]\,
      R => RST_IBUF
    );
\FSM_onehot_current_state_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \FSM_onehot_next_state_reg_n_0_[7]\,
      Q => \FSM_onehot_current_state_reg_n_0_[7]\,
      R => RST_IBUF
    );
\FSM_onehot_current_state_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \FSM_onehot_next_state_reg_n_0_[8]\,
      Q => \FSM_onehot_current_state_reg_n_0_[8]\,
      R => RST_IBUF
    );
\FSM_onehot_current_state_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \FSM_onehot_next_state_reg_n_0_[9]\,
      Q => \FSM_onehot_current_state_reg_n_0_[9]\,
      R => RST_IBUF
    );
\FSM_onehot_next_state_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '1'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_next_state_reg[0]_i_1_n_0\,
      G => enable_IBUF_BUFG,
      GE => '1',
      Q => \FSM_onehot_next_state_reg_n_0_[0]\
    );
\FSM_onehot_next_state_reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFCCFECC"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[7]\,
      I1 => \FSM_onehot_current_state_reg_n_0_[10]\,
      I2 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I3 => bit_in_IBUF,
      I4 => \FSM_onehot_current_state_reg_n_0_[2]\,
      O => \FSM_onehot_next_state_reg[0]_i_1_n_0\
    );
\FSM_onehot_next_state_reg[10]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_next_state_reg[10]_i_1_n_0\,
      G => enable_IBUF_BUFG,
      GE => '1',
      Q => \FSM_onehot_next_state_reg_n_0_[10]\
    );
\FSM_onehot_next_state_reg[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[6]\,
      I1 => bit_in_IBUF,
      I2 => \FSM_onehot_current_state_reg_n_0_[9]\,
      O => \FSM_onehot_next_state_reg[10]_i_1_n_0\
    );
\FSM_onehot_next_state_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_next_state_reg[1]_i_1_n_0\,
      G => enable_IBUF_BUFG,
      GE => '1',
      Q => \FSM_onehot_next_state_reg_n_0_[1]\
    );
\FSM_onehot_next_state_reg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F0E"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[1]\,
      I1 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I2 => bit_in_IBUF,
      I3 => \FSM_onehot_current_state_reg_n_0_[8]\,
      O => \FSM_onehot_next_state_reg[1]_i_1_n_0\
    );
\FSM_onehot_next_state_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_next_state_reg[2]_i_1_n_0\,
      G => enable_IBUF_BUFG,
      GE => '1',
      Q => \FSM_onehot_next_state_reg_n_0_[2]\
    );
\FSM_onehot_next_state_reg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00FE00"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[6]\,
      I1 => \FSM_onehot_current_state_reg_n_0_[5]\,
      I2 => \FSM_onehot_current_state_reg_n_0_[1]\,
      I3 => bit_in_IBUF,
      I4 => \FSM_onehot_current_state_reg_n_0_[4]\,
      O => \FSM_onehot_next_state_reg[2]_i_1_n_0\
    );
\FSM_onehot_next_state_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_next_state_reg[3]_i_1_n_0\,
      G => enable_IBUF_BUFG,
      GE => '1',
      Q => \FSM_onehot_next_state_reg_n_0_[3]\
    );
\FSM_onehot_next_state_reg[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I1 => bit_in_IBUF,
      O => \FSM_onehot_next_state_reg[3]_i_1_n_0\
    );
\FSM_onehot_next_state_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_next_state_reg[4]_i_1_n_0\,
      G => enable_IBUF_BUFG,
      GE => '1',
      Q => \FSM_onehot_next_state_reg_n_0_[4]\
    );
\FSM_onehot_next_state_reg[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[3]\,
      I1 => bit_in_IBUF,
      O => \FSM_onehot_next_state_reg[4]_i_1_n_0\
    );
\FSM_onehot_next_state_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_next_state_reg[5]_i_1_n_0\,
      G => enable_IBUF_BUFG,
      GE => '1',
      Q => \FSM_onehot_next_state_reg_n_0_[5]\
    );
\FSM_onehot_next_state_reg[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[4]\,
      I1 => bit_in_IBUF,
      O => \FSM_onehot_next_state_reg[5]_i_1_n_0\
    );
\FSM_onehot_next_state_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_next_state_reg[6]_i_1_n_0\,
      G => enable_IBUF_BUFG,
      GE => '1',
      Q => \FSM_onehot_next_state_reg_n_0_[6]\
    );
\FSM_onehot_next_state_reg[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[5]\,
      I1 => bit_in_IBUF,
      O => \FSM_onehot_next_state_reg[6]_i_1_n_0\
    );
\FSM_onehot_next_state_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_next_state_reg[7]_i_1_n_0\,
      G => enable_IBUF_BUFG,
      GE => '1',
      Q => \FSM_onehot_next_state_reg_n_0_[7]\
    );
\FSM_onehot_next_state_reg[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[3]\,
      I1 => bit_in_IBUF,
      O => \FSM_onehot_next_state_reg[7]_i_1_n_0\
    );
\FSM_onehot_next_state_reg[8]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_next_state_reg[8]_i_1_n_0\,
      G => enable_IBUF_BUFG,
      GE => '1',
      Q => \FSM_onehot_next_state_reg_n_0_[8]\
    );
\FSM_onehot_next_state_reg[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"32"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[7]\,
      I1 => bit_in_IBUF,
      I2 => \FSM_onehot_current_state_reg_n_0_[9]\,
      O => \FSM_onehot_next_state_reg[8]_i_1_n_0\
    );
\FSM_onehot_next_state_reg[9]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_next_state_reg[9]_i_1_n_0\,
      G => enable_IBUF_BUFG,
      GE => '1',
      Q => \FSM_onehot_next_state_reg_n_0_[9]\
    );
\FSM_onehot_next_state_reg[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[8]\,
      I1 => bit_in_IBUF,
      O => \FSM_onehot_next_state_reg[9]_i_1_n_0\
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
\content[35]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => enable_IBUF,
      I1 => \content_reg[35]_i_2_n_1\,
      I2 => non_stuffedbit,
      O => content
    );
\content[35]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_reg(20),
      I1 => counter_reg(21),
      O => \content[35]_i_10_n_0\
    );
\content[35]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_reg(18),
      I1 => counter_reg(19),
      O => \content[35]_i_11_n_0\
    );
\content[35]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_reg(16),
      I1 => counter_reg(17),
      O => \content[35]_i_13_n_0\
    );
\content[35]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_reg(14),
      I1 => counter_reg(15),
      O => \content[35]_i_14_n_0\
    );
\content[35]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_reg(12),
      I1 => counter_reg(13),
      O => \content[35]_i_15_n_0\
    );
\content[35]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_reg(10),
      I1 => counter_reg(11),
      O => \content[35]_i_16_n_0\
    );
\content[35]_i_17\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_reg(5),
      O => \content[35]_i_17_n_0\
    );
\content[35]_i_18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_reg(2),
      I1 => counter_reg(3),
      O => \content[35]_i_18_n_0\
    );
\content[35]_i_19\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_reg(8),
      I1 => counter_reg(9),
      O => \content[35]_i_19_n_0\
    );
\content[35]_i_20\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_reg(6),
      I1 => counter_reg(7),
      O => \content[35]_i_20_n_0\
    );
\content[35]_i_21\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(5),
      I1 => counter_reg(4),
      O => \content[35]_i_21_n_0\
    );
\content[35]_i_22\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(2),
      I1 => counter_reg(3),
      O => \content[35]_i_22_n_0\
    );
\content[35]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_reg(30),
      I1 => counter_reg(31),
      O => \content[35]_i_4_n_0\
    );
\content[35]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_reg(28),
      I1 => counter_reg(29),
      O => \content[35]_i_5_n_0\
    );
\content[35]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_reg(26),
      I1 => counter_reg(27),
      O => \content[35]_i_6_n_0\
    );
\content[35]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_reg(24),
      I1 => counter_reg(25),
      O => \content[35]_i_8_n_0\
    );
\content[35]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_reg(22),
      I1 => counter_reg(23),
      O => \content[35]_i_9_n_0\
    );
\content_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => content,
      D => bit_in_IBUF,
      Q => p_0_in(1),
      R => '0'
    );
\content_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => content,
      D => p_0_in(10),
      Q => p_0_in(11),
      R => '0'
    );
\content_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => content,
      D => p_0_in(11),
      Q => p_0_in(12),
      R => '0'
    );
\content_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => content,
      D => p_0_in(12),
      Q => p_0_in(13),
      R => '0'
    );
\content_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => content,
      D => p_0_in(13),
      Q => p_0_in(14),
      R => '0'
    );
\content_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => content,
      D => p_0_in(14),
      Q => p_0_in(15),
      R => '0'
    );
\content_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => content,
      D => p_0_in(15),
      Q => p_0_in(16),
      R => '0'
    );
\content_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => content,
      D => p_0_in(16),
      Q => p_0_in(17),
      R => '0'
    );
\content_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => content,
      D => p_0_in(17),
      Q => p_0_in(18),
      R => '0'
    );
\content_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => content,
      D => p_0_in(18),
      Q => p_0_in(19),
      R => '0'
    );
\content_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => content,
      D => p_0_in(19),
      Q => p_0_in(20),
      R => '0'
    );
\content_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => content,
      D => p_0_in(1),
      Q => p_0_in(2),
      R => '0'
    );
\content_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => content,
      D => p_0_in(20),
      Q => p_0_in(21),
      R => '0'
    );
\content_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => content,
      D => p_0_in(21),
      Q => p_0_in(22),
      R => '0'
    );
\content_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => content,
      D => p_0_in(22),
      Q => p_0_in(23),
      R => '0'
    );
\content_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => content,
      D => p_0_in(23),
      Q => p_0_in(24),
      R => '0'
    );
\content_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => content,
      D => p_0_in(24),
      Q => p_0_in(25),
      R => '0'
    );
\content_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => content,
      D => p_0_in(25),
      Q => p_0_in(26),
      R => '0'
    );
\content_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => content,
      D => p_0_in(26),
      Q => p_0_in(27),
      R => '0'
    );
\content_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => content,
      D => p_0_in(27),
      Q => p_0_in(28),
      R => '0'
    );
\content_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => content,
      D => p_0_in(28),
      Q => p_0_in(29),
      R => '0'
    );
\content_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => content,
      D => p_0_in(29),
      Q => p_0_in(30),
      R => '0'
    );
\content_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => content,
      D => p_0_in(2),
      Q => p_0_in(3),
      R => '0'
    );
\content_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => content,
      D => p_0_in(30),
      Q => p_0_in(31),
      R => '0'
    );
\content_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => content,
      D => p_0_in(31),
      Q => p_0_in(32),
      R => '0'
    );
\content_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => content,
      D => p_0_in(32),
      Q => p_0_in(33),
      R => '0'
    );
\content_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => content,
      D => p_0_in(33),
      Q => p_0_in(34),
      R => '0'
    );
\content_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => content,
      D => p_0_in(34),
      Q => p_0_in(35),
      R => '0'
    );
\content_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => content,
      D => p_0_in(35),
      Q => \content_reg_n_0_[35]\,
      R => '0'
    );
\content_reg[35]_i_12\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \content_reg[35]_i_12_n_0\,
      CO(2) => \content_reg[35]_i_12_n_1\,
      CO(1) => \content_reg[35]_i_12_n_2\,
      CO(0) => \content_reg[35]_i_12_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \content[35]_i_17_n_0\,
      DI(0) => \content[35]_i_18_n_0\,
      O(3 downto 0) => \NLW_content_reg[35]_i_12_O_UNCONNECTED\(3 downto 0),
      S(3) => \content[35]_i_19_n_0\,
      S(2) => \content[35]_i_20_n_0\,
      S(1) => \content[35]_i_21_n_0\,
      S(0) => \content[35]_i_22_n_0\
    );
\content_reg[35]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \content_reg[35]_i_3_n_0\,
      CO(3) => \NLW_content_reg[35]_i_2_CO_UNCONNECTED\(3),
      CO(2) => \content_reg[35]_i_2_n_1\,
      CO(1) => \content_reg[35]_i_2_n_2\,
      CO(0) => \content_reg[35]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => counter_reg(31),
      DI(1 downto 0) => B"00",
      O(3 downto 0) => \NLW_content_reg[35]_i_2_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \content[35]_i_4_n_0\,
      S(1) => \content[35]_i_5_n_0\,
      S(0) => \content[35]_i_6_n_0\
    );
\content_reg[35]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \content_reg[35]_i_7_n_0\,
      CO(3) => \content_reg[35]_i_3_n_0\,
      CO(2) => \content_reg[35]_i_3_n_1\,
      CO(1) => \content_reg[35]_i_3_n_2\,
      CO(0) => \content_reg[35]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_content_reg[35]_i_3_O_UNCONNECTED\(3 downto 0),
      S(3) => \content[35]_i_8_n_0\,
      S(2) => \content[35]_i_9_n_0\,
      S(1) => \content[35]_i_10_n_0\,
      S(0) => \content[35]_i_11_n_0\
    );
\content_reg[35]_i_7\: unisim.vcomponents.CARRY4
     port map (
      CI => \content_reg[35]_i_12_n_0\,
      CO(3) => \content_reg[35]_i_7_n_0\,
      CO(2) => \content_reg[35]_i_7_n_1\,
      CO(1) => \content_reg[35]_i_7_n_2\,
      CO(0) => \content_reg[35]_i_7_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_content_reg[35]_i_7_O_UNCONNECTED\(3 downto 0),
      S(3) => \content[35]_i_13_n_0\,
      S(2) => \content[35]_i_14_n_0\,
      S(1) => \content[35]_i_15_n_0\,
      S(0) => \content[35]_i_16_n_0\
    );
\content_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => content,
      D => p_0_in(3),
      Q => p_0_in(4),
      R => '0'
    );
\content_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => content,
      D => p_0_in(4),
      Q => p_0_in(5),
      R => '0'
    );
\content_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => content,
      D => p_0_in(5),
      Q => p_0_in(6),
      R => '0'
    );
\content_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => content,
      D => p_0_in(6),
      Q => p_0_in(7),
      R => '0'
    );
\content_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => content,
      D => p_0_in(7),
      Q => p_0_in(8),
      R => '0'
    );
\content_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => content,
      D => p_0_in(8),
      Q => p_0_in(9),
      R => '0'
    );
\content_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => content,
      D => p_0_in(9),
      Q => p_0_in(10),
      R => '0'
    );
\counter[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_reg(0),
      O => \counter[0]_i_2_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => content,
      D => \counter_reg[0]_i_1_n_7\,
      Q => counter_reg(0),
      R => '0'
    );
\counter_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \counter_reg[0]_i_1_n_0\,
      CO(2) => \counter_reg[0]_i_1_n_1\,
      CO(1) => \counter_reg[0]_i_1_n_2\,
      CO(0) => \counter_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \counter_reg[0]_i_1_n_4\,
      O(2) => \counter_reg[0]_i_1_n_5\,
      O(1) => \counter_reg[0]_i_1_n_6\,
      O(0) => \counter_reg[0]_i_1_n_7\,
      S(3 downto 1) => counter_reg(3 downto 1),
      S(0) => \counter[0]_i_2_n_0\
    );
\counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => content,
      D => \counter_reg[8]_i_1_n_5\,
      Q => counter_reg(10),
      R => '0'
    );
\counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => content,
      D => \counter_reg[8]_i_1_n_4\,
      Q => counter_reg(11),
      R => '0'
    );
\counter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => content,
      D => \counter_reg[12]_i_1_n_7\,
      Q => counter_reg(12),
      R => '0'
    );
\counter_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[8]_i_1_n_0\,
      CO(3) => \counter_reg[12]_i_1_n_0\,
      CO(2) => \counter_reg[12]_i_1_n_1\,
      CO(1) => \counter_reg[12]_i_1_n_2\,
      CO(0) => \counter_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[12]_i_1_n_4\,
      O(2) => \counter_reg[12]_i_1_n_5\,
      O(1) => \counter_reg[12]_i_1_n_6\,
      O(0) => \counter_reg[12]_i_1_n_7\,
      S(3 downto 0) => counter_reg(15 downto 12)
    );
\counter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => content,
      D => \counter_reg[12]_i_1_n_6\,
      Q => counter_reg(13),
      R => '0'
    );
\counter_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => content,
      D => \counter_reg[12]_i_1_n_5\,
      Q => counter_reg(14),
      R => '0'
    );
\counter_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => content,
      D => \counter_reg[12]_i_1_n_4\,
      Q => counter_reg(15),
      R => '0'
    );
\counter_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => content,
      D => \counter_reg[16]_i_1_n_7\,
      Q => counter_reg(16),
      R => '0'
    );
\counter_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[12]_i_1_n_0\,
      CO(3) => \counter_reg[16]_i_1_n_0\,
      CO(2) => \counter_reg[16]_i_1_n_1\,
      CO(1) => \counter_reg[16]_i_1_n_2\,
      CO(0) => \counter_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[16]_i_1_n_4\,
      O(2) => \counter_reg[16]_i_1_n_5\,
      O(1) => \counter_reg[16]_i_1_n_6\,
      O(0) => \counter_reg[16]_i_1_n_7\,
      S(3 downto 0) => counter_reg(19 downto 16)
    );
\counter_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => content,
      D => \counter_reg[16]_i_1_n_6\,
      Q => counter_reg(17),
      R => '0'
    );
\counter_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => content,
      D => \counter_reg[16]_i_1_n_5\,
      Q => counter_reg(18),
      R => '0'
    );
\counter_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => content,
      D => \counter_reg[16]_i_1_n_4\,
      Q => counter_reg(19),
      R => '0'
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => content,
      D => \counter_reg[0]_i_1_n_6\,
      Q => counter_reg(1),
      R => '0'
    );
\counter_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => content,
      D => \counter_reg[20]_i_1_n_7\,
      Q => counter_reg(20),
      R => '0'
    );
\counter_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[16]_i_1_n_0\,
      CO(3) => \counter_reg[20]_i_1_n_0\,
      CO(2) => \counter_reg[20]_i_1_n_1\,
      CO(1) => \counter_reg[20]_i_1_n_2\,
      CO(0) => \counter_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[20]_i_1_n_4\,
      O(2) => \counter_reg[20]_i_1_n_5\,
      O(1) => \counter_reg[20]_i_1_n_6\,
      O(0) => \counter_reg[20]_i_1_n_7\,
      S(3 downto 0) => counter_reg(23 downto 20)
    );
\counter_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => content,
      D => \counter_reg[20]_i_1_n_6\,
      Q => counter_reg(21),
      R => '0'
    );
\counter_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => content,
      D => \counter_reg[20]_i_1_n_5\,
      Q => counter_reg(22),
      R => '0'
    );
\counter_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => content,
      D => \counter_reg[20]_i_1_n_4\,
      Q => counter_reg(23),
      R => '0'
    );
\counter_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => content,
      D => \counter_reg[24]_i_1_n_7\,
      Q => counter_reg(24),
      R => '0'
    );
\counter_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[20]_i_1_n_0\,
      CO(3) => \counter_reg[24]_i_1_n_0\,
      CO(2) => \counter_reg[24]_i_1_n_1\,
      CO(1) => \counter_reg[24]_i_1_n_2\,
      CO(0) => \counter_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[24]_i_1_n_4\,
      O(2) => \counter_reg[24]_i_1_n_5\,
      O(1) => \counter_reg[24]_i_1_n_6\,
      O(0) => \counter_reg[24]_i_1_n_7\,
      S(3 downto 0) => counter_reg(27 downto 24)
    );
\counter_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => content,
      D => \counter_reg[24]_i_1_n_6\,
      Q => counter_reg(25),
      R => '0'
    );
\counter_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => content,
      D => \counter_reg[24]_i_1_n_5\,
      Q => counter_reg(26),
      R => '0'
    );
\counter_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => content,
      D => \counter_reg[24]_i_1_n_4\,
      Q => counter_reg(27),
      R => '0'
    );
\counter_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => content,
      D => \counter_reg[28]_i_1_n_7\,
      Q => counter_reg(28),
      R => '0'
    );
\counter_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[24]_i_1_n_0\,
      CO(3) => \NLW_counter_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \counter_reg[28]_i_1_n_1\,
      CO(1) => \counter_reg[28]_i_1_n_2\,
      CO(0) => \counter_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[28]_i_1_n_4\,
      O(2) => \counter_reg[28]_i_1_n_5\,
      O(1) => \counter_reg[28]_i_1_n_6\,
      O(0) => \counter_reg[28]_i_1_n_7\,
      S(3 downto 0) => counter_reg(31 downto 28)
    );
\counter_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => content,
      D => \counter_reg[28]_i_1_n_6\,
      Q => counter_reg(29),
      R => '0'
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => content,
      D => \counter_reg[0]_i_1_n_5\,
      Q => counter_reg(2),
      R => '0'
    );
\counter_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => content,
      D => \counter_reg[28]_i_1_n_5\,
      Q => counter_reg(30),
      R => '0'
    );
\counter_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => content,
      D => \counter_reg[28]_i_1_n_4\,
      Q => counter_reg(31),
      R => '0'
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => content,
      D => \counter_reg[0]_i_1_n_4\,
      Q => counter_reg(3),
      R => '0'
    );
\counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => content,
      D => \counter_reg[4]_i_1_n_7\,
      Q => counter_reg(4),
      R => '0'
    );
\counter_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[0]_i_1_n_0\,
      CO(3) => \counter_reg[4]_i_1_n_0\,
      CO(2) => \counter_reg[4]_i_1_n_1\,
      CO(1) => \counter_reg[4]_i_1_n_2\,
      CO(0) => \counter_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[4]_i_1_n_4\,
      O(2) => \counter_reg[4]_i_1_n_5\,
      O(1) => \counter_reg[4]_i_1_n_6\,
      O(0) => \counter_reg[4]_i_1_n_7\,
      S(3 downto 0) => counter_reg(7 downto 4)
    );
\counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => content,
      D => \counter_reg[4]_i_1_n_6\,
      Q => counter_reg(5),
      R => '0'
    );
\counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => content,
      D => \counter_reg[4]_i_1_n_5\,
      Q => counter_reg(6),
      R => '0'
    );
\counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => content,
      D => \counter_reg[4]_i_1_n_4\,
      Q => counter_reg(7),
      R => '0'
    );
\counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => content,
      D => \counter_reg[8]_i_1_n_7\,
      Q => counter_reg(8),
      R => '0'
    );
\counter_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[4]_i_1_n_0\,
      CO(3) => \counter_reg[8]_i_1_n_0\,
      CO(2) => \counter_reg[8]_i_1_n_1\,
      CO(1) => \counter_reg[8]_i_1_n_2\,
      CO(0) => \counter_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[8]_i_1_n_4\,
      O(2) => \counter_reg[8]_i_1_n_5\,
      O(1) => \counter_reg[8]_i_1_n_6\,
      O(0) => \counter_reg[8]_i_1_n_7\,
      S(3 downto 0) => counter_reg(11 downto 8)
    );
\counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => content,
      D => \counter_reg[8]_i_1_n_6\,
      Q => counter_reg(9),
      R => '0'
    );
\data_out[35]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \data_out[35]_i_2_n_0\,
      I1 => \data_out[35]_i_3_n_0\,
      I2 => \data_out[35]_i_4_n_0\,
      I3 => \data_out[35]_i_5_n_0\,
      I4 => \data_out[35]_i_6_n_0\,
      I5 => \data_out[35]_i_7_n_0\,
      O => \data_out[35]_i_1_n_0\
    );
\data_out[35]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => counter_reg(23),
      I1 => counter_reg(24),
      I2 => counter_reg(21),
      I3 => counter_reg(22),
      I4 => counter_reg(26),
      I5 => counter_reg(25),
      O => \data_out[35]_i_2_n_0\
    );
\data_out[35]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => counter_reg(29),
      I1 => counter_reg(30),
      I2 => counter_reg(27),
      I3 => counter_reg(28),
      I4 => counter_reg(31),
      I5 => enable_IBUF,
      O => \data_out[35]_i_3_n_0\
    );
\data_out[35]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => counter_reg(1),
      I1 => counter_reg(2),
      I2 => counter_reg(0),
      O => \data_out[35]_i_4_n_0\
    );
\data_out[35]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => counter_reg(5),
      I1 => counter_reg(6),
      I2 => counter_reg(3),
      I3 => counter_reg(4),
      I4 => counter_reg(8),
      I5 => counter_reg(7),
      O => \data_out[35]_i_5_n_0\
    );
\data_out[35]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => counter_reg(17),
      I1 => counter_reg(18),
      I2 => counter_reg(15),
      I3 => counter_reg(16),
      I4 => counter_reg(20),
      I5 => counter_reg(19),
      O => \data_out[35]_i_6_n_0\
    );
\data_out[35]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => counter_reg(11),
      I1 => counter_reg(12),
      I2 => counter_reg(9),
      I3 => counter_reg(10),
      I4 => counter_reg(14),
      I5 => counter_reg(13),
      O => \data_out[35]_i_7_n_0\
    );
\data_out_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_out_OBUF(0),
      O => data_out(0)
    );
\data_out_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_out_OBUF(10),
      O => data_out(10)
    );
\data_out_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_out_OBUF(11),
      O => data_out(11)
    );
\data_out_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_out_OBUF(12),
      O => data_out(12)
    );
\data_out_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_out_OBUF(13),
      O => data_out(13)
    );
\data_out_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_out_OBUF(14),
      O => data_out(14)
    );
\data_out_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_out_OBUF(15),
      O => data_out(15)
    );
\data_out_OBUF[16]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_out_OBUF(16),
      O => data_out(16)
    );
\data_out_OBUF[17]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_out_OBUF(17),
      O => data_out(17)
    );
\data_out_OBUF[18]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_out_OBUF(18),
      O => data_out(18)
    );
\data_out_OBUF[19]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_out_OBUF(19),
      O => data_out(19)
    );
\data_out_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_out_OBUF(1),
      O => data_out(1)
    );
\data_out_OBUF[20]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_out_OBUF(20),
      O => data_out(20)
    );
\data_out_OBUF[21]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_out_OBUF(21),
      O => data_out(21)
    );
\data_out_OBUF[22]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_out_OBUF(22),
      O => data_out(22)
    );
\data_out_OBUF[23]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_out_OBUF(23),
      O => data_out(23)
    );
\data_out_OBUF[24]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_out_OBUF(24),
      O => data_out(24)
    );
\data_out_OBUF[25]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_out_OBUF(25),
      O => data_out(25)
    );
\data_out_OBUF[26]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_out_OBUF(26),
      O => data_out(26)
    );
\data_out_OBUF[27]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_out_OBUF(27),
      O => data_out(27)
    );
\data_out_OBUF[28]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_out_OBUF(28),
      O => data_out(28)
    );
\data_out_OBUF[29]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_out_OBUF(29),
      O => data_out(29)
    );
\data_out_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_out_OBUF(2),
      O => data_out(2)
    );
\data_out_OBUF[30]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_out_OBUF(30),
      O => data_out(30)
    );
\data_out_OBUF[31]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_out_OBUF(31),
      O => data_out(31)
    );
\data_out_OBUF[32]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_out_OBUF(32),
      O => data_out(32)
    );
\data_out_OBUF[33]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_out_OBUF(33),
      O => data_out(33)
    );
\data_out_OBUF[34]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_out_OBUF(34),
      O => data_out(34)
    );
\data_out_OBUF[35]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_out_OBUF(35),
      O => data_out(35)
    );
\data_out_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_out_OBUF(3),
      O => data_out(3)
    );
\data_out_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_out_OBUF(4),
      O => data_out(4)
    );
\data_out_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_out_OBUF(5),
      O => data_out(5)
    );
\data_out_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_out_OBUF(6),
      O => data_out(6)
    );
\data_out_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_out_OBUF(7),
      O => data_out(7)
    );
\data_out_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_out_OBUF(8),
      O => data_out(8)
    );
\data_out_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_out_OBUF(9),
      O => data_out(9)
    );
\data_out_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \data_out[35]_i_1_n_0\,
      D => p_0_in(1),
      Q => data_out_OBUF(0),
      R => '0'
    );
\data_out_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \data_out[35]_i_1_n_0\,
      D => p_0_in(11),
      Q => data_out_OBUF(10),
      R => '0'
    );
\data_out_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \data_out[35]_i_1_n_0\,
      D => p_0_in(12),
      Q => data_out_OBUF(11),
      R => '0'
    );
\data_out_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \data_out[35]_i_1_n_0\,
      D => p_0_in(13),
      Q => data_out_OBUF(12),
      R => '0'
    );
\data_out_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \data_out[35]_i_1_n_0\,
      D => p_0_in(14),
      Q => data_out_OBUF(13),
      R => '0'
    );
\data_out_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \data_out[35]_i_1_n_0\,
      D => p_0_in(15),
      Q => data_out_OBUF(14),
      R => '0'
    );
\data_out_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \data_out[35]_i_1_n_0\,
      D => p_0_in(16),
      Q => data_out_OBUF(15),
      R => '0'
    );
\data_out_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \data_out[35]_i_1_n_0\,
      D => p_0_in(17),
      Q => data_out_OBUF(16),
      R => '0'
    );
\data_out_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \data_out[35]_i_1_n_0\,
      D => p_0_in(18),
      Q => data_out_OBUF(17),
      R => '0'
    );
\data_out_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \data_out[35]_i_1_n_0\,
      D => p_0_in(19),
      Q => data_out_OBUF(18),
      R => '0'
    );
\data_out_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \data_out[35]_i_1_n_0\,
      D => p_0_in(20),
      Q => data_out_OBUF(19),
      R => '0'
    );
\data_out_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \data_out[35]_i_1_n_0\,
      D => p_0_in(2),
      Q => data_out_OBUF(1),
      R => '0'
    );
\data_out_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \data_out[35]_i_1_n_0\,
      D => p_0_in(21),
      Q => data_out_OBUF(20),
      R => '0'
    );
\data_out_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \data_out[35]_i_1_n_0\,
      D => p_0_in(22),
      Q => data_out_OBUF(21),
      R => '0'
    );
\data_out_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \data_out[35]_i_1_n_0\,
      D => p_0_in(23),
      Q => data_out_OBUF(22),
      R => '0'
    );
\data_out_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \data_out[35]_i_1_n_0\,
      D => p_0_in(24),
      Q => data_out_OBUF(23),
      R => '0'
    );
\data_out_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \data_out[35]_i_1_n_0\,
      D => p_0_in(25),
      Q => data_out_OBUF(24),
      R => '0'
    );
\data_out_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \data_out[35]_i_1_n_0\,
      D => p_0_in(26),
      Q => data_out_OBUF(25),
      R => '0'
    );
\data_out_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \data_out[35]_i_1_n_0\,
      D => p_0_in(27),
      Q => data_out_OBUF(26),
      R => '0'
    );
\data_out_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \data_out[35]_i_1_n_0\,
      D => p_0_in(28),
      Q => data_out_OBUF(27),
      R => '0'
    );
\data_out_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \data_out[35]_i_1_n_0\,
      D => p_0_in(29),
      Q => data_out_OBUF(28),
      R => '0'
    );
\data_out_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \data_out[35]_i_1_n_0\,
      D => p_0_in(30),
      Q => data_out_OBUF(29),
      R => '0'
    );
\data_out_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \data_out[35]_i_1_n_0\,
      D => p_0_in(3),
      Q => data_out_OBUF(2),
      R => '0'
    );
\data_out_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \data_out[35]_i_1_n_0\,
      D => p_0_in(31),
      Q => data_out_OBUF(30),
      R => '0'
    );
\data_out_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \data_out[35]_i_1_n_0\,
      D => p_0_in(32),
      Q => data_out_OBUF(31),
      R => '0'
    );
\data_out_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \data_out[35]_i_1_n_0\,
      D => p_0_in(33),
      Q => data_out_OBUF(32),
      R => '0'
    );
\data_out_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \data_out[35]_i_1_n_0\,
      D => p_0_in(34),
      Q => data_out_OBUF(33),
      R => '0'
    );
\data_out_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \data_out[35]_i_1_n_0\,
      D => p_0_in(35),
      Q => data_out_OBUF(34),
      R => '0'
    );
\data_out_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \data_out[35]_i_1_n_0\,
      D => \content_reg_n_0_[35]\,
      Q => data_out_OBUF(35),
      R => '0'
    );
\data_out_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \data_out[35]_i_1_n_0\,
      D => p_0_in(4),
      Q => data_out_OBUF(3),
      R => '0'
    );
\data_out_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \data_out[35]_i_1_n_0\,
      D => p_0_in(5),
      Q => data_out_OBUF(4),
      R => '0'
    );
\data_out_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \data_out[35]_i_1_n_0\,
      D => p_0_in(6),
      Q => data_out_OBUF(5),
      R => '0'
    );
\data_out_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \data_out[35]_i_1_n_0\,
      D => p_0_in(7),
      Q => data_out_OBUF(6),
      R => '0'
    );
\data_out_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \data_out[35]_i_1_n_0\,
      D => p_0_in(8),
      Q => data_out_OBUF(7),
      R => '0'
    );
\data_out_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \data_out[35]_i_1_n_0\,
      D => p_0_in(9),
      Q => data_out_OBUF(8),
      R => '0'
    );
\data_out_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \data_out[35]_i_1_n_0\,
      D => p_0_in(10),
      Q => data_out_OBUF(9),
      R => '0'
    );
enable_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => enable_IBUF,
      O => enable_IBUF_BUFG
    );
enable_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => enable,
      O => enable_IBUF
    );
non_stuffedbit_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => non_stuffedbit_reg_i_1_n_0,
      G => enable_IBUF_BUFG,
      GE => '1',
      Q => non_stuffedbit
    );
non_stuffedbit_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[8]\,
      I1 => non_stuffedbit_reg_i_2_n_0,
      I2 => \FSM_onehot_current_state_reg_n_0_[7]\,
      I3 => \FSM_onehot_current_state_reg_n_0_[10]\,
      I4 => \FSM_onehot_current_state_reg_n_0_[4]\,
      I5 => \FSM_onehot_current_state_reg_n_0_[5]\,
      O => non_stuffedbit_reg_i_1_n_0
    );
non_stuffedbit_reg_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I1 => \FSM_onehot_current_state_reg_n_0_[3]\,
      I2 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I3 => \FSM_onehot_current_state_reg_n_0_[1]\,
      O => non_stuffedbit_reg_i_2_n_0
    );
end STRUCTURE;
