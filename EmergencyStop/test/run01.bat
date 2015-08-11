@echo off
if not exist out mkdir out
SCSSMLNC ..\Simulation\TA_EmergencyStop__ES_ReceiveAndControl.dll -scenario test01.sss -out out\test01.out
