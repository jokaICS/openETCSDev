@echo off
if not exist out mkdir out
SCSSMLNC ..\Simulation\TA_EmergencyStop__Manage_EmergencyStop.dll -scenario test11.sss -out out\test11.out
REM SCSSMLNC ..\Simulation\TA_EmergencyStop__Manage_EmergencyStop.dll -scenario test99.sss
