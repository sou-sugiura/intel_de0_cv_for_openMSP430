# Contents
openMSP430 Soc Project (https://opencores.org/projects/openmsp430) simulation and implementation 

environment for Intel DE0-CV board. Before use this environment, read the following prerequisite.

# Prerequisite
This environment is confirmed to run in the following environment.

## Operating System    : Ubuntu-18.04 LTS on WSL ver 1.0 (64bit)
https://cdrdv2-public.intel.com/666293/quartus_install-683472-666293.pdf

Refer to "2.3.1. Installing Windows Subsystem for Linux* (WSL) on Windows"

## FPGA Implementation : Quartus Prime (Ver22.1)
https://www.intel.com/content/www/us/en/software-kit/773998

Download for Windows application.

## RTL Simulator       : QuestaSim (Ver23.1)
https://www.intel.com/content/www/us/en/software-kit/776289

Download for Windows application.

## msp430-toolchain : TI Download Site
https://www.ti.com/tool/MSP430-GCC-OPENSOURCE#downloads

msp430-gcc-x.x.x.xx_linux64.tar.bz2, msp430-gcc-support-files-x.xxx.zip

Download these files, unzip and put contents in /opt/msp430-toolchain. 
After that add PATH to /opt/msp430-toolchain/bin.

## tcl install
% sudo apt install tcl
