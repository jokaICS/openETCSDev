@echo off
if not exist out mkdir out
SCSSMLNC ..\Simulation\TA_EmergencyStop__Manage_EmergencyStop.dll -scenario test10.sss -out out\test10.out
REM SCSSMLNC ..\Simulation\TA_EmergencyStop__Manage_EmergencyStop.dll -scenario test99.sss
