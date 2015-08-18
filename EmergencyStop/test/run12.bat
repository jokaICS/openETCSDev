@echo off
if not exist out mkdir out
SCSSMLNC ..\Simulation\TA_EmergencyStop__Manage_EmergencyStop.dll -scenario test12.sss -out out\test12.out
REM SCSSMLNC ..\Simulation\TA_EmergencyStop__Manage_EmergencyStop.dll -scenario test99.sss
