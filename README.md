# Contents
openMSP430 SoC Project (https://opencores.org/projects/openmsp430) simulation and implementation 

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

Set Questa license from SSLC*   *To set license Microsoft personal account is necessary.(work or school account cannot be used)

https://community.intel.com/t5/Intel-FPGA-Software-Installation/Guidelines-amp-Information-on-Questa-Intel-FPGA-Edition-Software/m-p/1329999#:~:text=For%20Windows%3A%201%201.%20Get%20a%20license.dat%20file,5.%20Click%20OK%20and%20restart%20the%20Questa%20software.

## msp430-toolchain : TI Download Site
https://www.ti.com/tool/MSP430-GCC-OPENSOURCE#downloads

msp430-gcc-x.x.x.xx_linux64.tar.bz2, msp430-gcc-support-files-x.xxx.zip

Download these files, unzip and put contents in /opt/msp430-toolchain. 
After that add PATH to /opt/msp430-toolchain/bin.

## tcl install
% sudo apt install tcl
