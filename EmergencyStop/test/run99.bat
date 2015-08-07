@echo off
if not exist out mkdir out
SCSSMLNC ..\Simulation\EmergencyStop__Manage_EmergencyStop.dll -scenario test99.sss -out out\test99.out
