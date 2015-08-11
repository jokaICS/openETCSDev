@echo off
if not exist out mkdir out
SCSSMLNC ..\Simulation\TA_EmergencyStop__ES_Process_Conditional.dll -scenario test03.sss -out out\test03.out
