@echo off
:: Check for Admin privileges
net session >nul 2>&1
if %errorLevel% == 0 (
    goto :prompt
) else (
    powershell -Command "Start-Process -FilePath '%0' -Verb RunAs"
    exit /b
)

:prompt
cls
echo =========================================================
echo This will clean up the following temporary folders:
echo - C:\Windows\Temp
echo - C:\Users\ACER\AppData\Local\Temp
echo - C:\Windows\Prefetch
echo =========================================================
echo.

:askAgain
set /p confirm=Do you want to continue? (Y/N): 
if /i "%confirm%"=="Y" goto clean
if /i "%confirm%"=="N" (
    echo Cleanup cancelled by user.
    pause
    exit /b
)
echo Invalid input. Please enter Y or N.
goto askAgain

:clean
echo.
echo Cleaning files now...

:: Clean C:\Windows\Temp
del /q /f /s "C:\Windows\Temp\*.*" >nul 2>&1
for /d %%x in ("C:\Windows\Temp\*") do rd /s /q "%%x" >nul 2>&1

:: Clean C:\Users\ACER\AppData\Local\Temp (%temp%)
del /q /f /s "%temp%\*.*" >nul 2>&1
for /d %%x in ("%temp%\*") do rd /s /q "%%x" >nul 2>&1

:: Clean C:\Windows\Prefetch
del /q /f /s "C:\Windows\Prefetch\*.*" >nul 2>&1
for /d %%x in ("C:\Windows\Prefetch\*") do rd /s /q "%%x" >nul 2>&1

echo.
echo =========================================================
echo Cleanup successfully finished!
pause
exit