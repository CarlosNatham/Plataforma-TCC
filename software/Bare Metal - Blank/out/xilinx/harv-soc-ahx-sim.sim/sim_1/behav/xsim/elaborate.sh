#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2022.1 (64-bit)
#
# Filename    : elaborate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for elaborating the compiled design
#
# Generated by Vivado on Sat Sep 17 03:22:28 CEST 2022
# SW Build 3526262 on Mon Apr 18 15:47:01 MDT 2022
#
# IP Build 3524634 on Mon Apr 18 20:55:01 MDT 2022
#
# usage: elaborate.sh
#
# ****************************************************************************
set -Eeuo pipefail
# elaborate design
echo "xelab --incr --debug off --relax --mt 8 -generic_top "AHX_FILEPATH=$AHX_FILEPATH" -generic_top "MEM_SIZE_MB=8" -L xil_defaultlib -L secureip --snapshot ahx_tb_behav xil_defaultlib.ahx_tb -log elaborate.log"
xelab --incr --debug off --relax --mt 8 -generic_top "AHX_FILEPATH=$AHX_FILEPATH" -generic_top "MEM_SIZE_MB=8" -L xil_defaultlib -L secureip --snapshot ahx_tb_behav xil_defaultlib.ahx_tb -log elaborate.log
