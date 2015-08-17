@echo off
if not exist out mkdir out
SCSSMLNC ..\Simulation\TA_EmergencyStop__NID_EM_Store__Manage_NID_EM_Store.dll -scenario test04.sss -out out\test04.out
