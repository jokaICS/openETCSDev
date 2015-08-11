@echo off
if not exist out mkdir out
SCSSMLNC ..\Simulation\TA_EmergencyStop__ES_Process_Unconditional.dll -scenario test02.sss -out out\test02.out
