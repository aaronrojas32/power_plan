@echo off

:loop
for /f "tokens=2 delims==." %%a in ('wmic path Win32_Battery Get BatteryStatus /value') do set status=%%a
for /f "tokens=2 delims==." %%b in ('wmic path Win32_Battery Get EstimatedChargeRemaining /value') do set charge=%%b

if %status% equ 2 (
    powercfg -SETACTIVE 6f6c12a8-f34d-4d4a-ba70-5af731d6177b
) else (
    powercfg -SETACTIVE 381b4222-f694-41f0-9685-ff5bb260df2e
)

timeout /t 5 >nul
goto loop
