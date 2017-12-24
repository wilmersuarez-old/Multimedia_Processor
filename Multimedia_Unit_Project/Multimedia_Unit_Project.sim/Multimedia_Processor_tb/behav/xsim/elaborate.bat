@echo off
REM ****************************************************************************
REM Vivado (TM) v2017.3.1 (64-bit)
REM
REM Filename    : elaborate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for elaborating the compiled design
REM
REM Generated by Vivado on Mon Dec 04 23:23:07 -0500 2017
REM SW Build 2035080 on Fri Oct 20 14:20:01 MDT 2017
REM
REM Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
REM
REM usage: elaborate.bat
REM
REM ****************************************************************************
call xelab  -wto 8962e72d61834c9f8d6bad901fd610db --incr --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot Multimedia_Processor_tb_behav xil_defaultlib.Multimedia_Processor_tb -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
