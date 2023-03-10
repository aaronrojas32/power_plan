@echo off

:loop
for /f "tokens=2 delims==." %%a in ('wmic path Win32_Battery Get BatteryStatus /value') do set status=%%a
for /f "tokens=2 delims==." %%b in ('wmic path Win32_Battery Get EstimatedChargeRemaining /value') do set charge=%%b

if %status% equ 2 (
    powercfg -SETACTIVE GUID_ENCHUFADO
) else (
    powercfg -SETACTIVE GUID_BATERIA
)

timeout /t 5 >nul
goto loop
