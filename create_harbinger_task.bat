@echo off
setlocal

:: ======================================
:: Harbinger AHK - Batch task setup script
:: Author: @turbits
:: Github: https://github.com/turbits/harbinger
:: Website: https://turbits.sh
:: License: See repo
:: ======================================


:: ======================================
:: ELEVATE TO ADMIN (REQ. TO MAKE TASK)
:: ======================================

FSUTIL DIRTY query %SystemDrive% >NUL || (
    PowerShell "Start-Process -FilePath cmd.exe -Args '/C CHDIR /D %CD% & ""%0" %*"' -Verb RunAs"
    EXIT
)

echo =========================================================
echo HARBINGER AHK SET UP
echo https://github.com/turbits/harbinger
echo =========================================================

echo This will:
echo 1. Create a permanent folder in %LOCALAPPDATA% called 'HarbingerAHK'
echo 2. Copy the harbinger.ahk file to that folder for consistent path used by task
echo 3. Create a scheduled task using the current user to run Harbinger when the user logs on
echo 4. Runs the task once to initialize

echo You may also create this task manually, see the README

echo.
echo Press ENTER to continue, or CTRL+C to exit immediately
pause >nul

:: ======================================
:: CONFIGURATION
:: ======================================
set "TASK_NAME=HarbingerAHK_OnLogon"
set "APP_DIR=%LOCALAPPDATA%\HarbingerAHK"
set "SOURCE_AHK=harbinger.ahk"
set "AHK_PATH=C:\Program Files\AutoHotkey\v2\AutoHotkey.exe"
if not exist "%AHK_PATH%" (
    echo FATAL: AutoHotkey not found. You should install AutoHotkey 2.0 64bit and rerun this batch script.
	echo Expected executable at: "%AHK_PATH%"
    pause
    exit /b 1
)

:: ======================================
:: CHECK FOR AHK FILE
:: ======================================
if not exist "%SOURCE_AHK%" (
	echo FATAL: harbinger.ahk file not found in this directory!
	echo Expected file here: "%SOURCE_AHK%"
	pause
	exit /b 1
)

:: ======================================
:: CREATE FOLDER
:: ======================================
if not exist "%APP_DIR%" (
	mkdir "%APP_DIR%"
	if errorlevel 1 (
		echo FATAL: Could not create the folder "%APP_DIR%"
		pause
		exit /b 1
	)
)

:: ======================================
:: COPY AHK FILE TO NEW FOLDER
:: ======================================
set "DEST_AHK=%APP_DIR%\harbinger.ahk"
copy /Y "%SOURCE_AHK%" "%DEST_AHK%" >nul
if errorlevel 1 (
	echo FATAL: Could not copy the harbinger.ahk file to "%DEST_AHK%"
	pause
	exit /b 1
)

:: ======================================
:: CREATE SCHEDULED TASK
:: RUN ON LOGON. USES CURRENT USER
:: ======================================
schtasks /Create /TN "%TASK_NAME%" /TR "%DEST_AHK%" /SC ONLOGON /RU %username% /IT
if errorlevel 1 (
	echo FATAL: Failed to create scheduled task "%TASK_NAME%"
	pause
	exit /b 1
)
schtasks /Run /TN "%TASK_NAME%"

:: ======================================
:: FINISH UP
:: ======================================

echo.
echo Setup complete
echo Script location: %DEST_AHK%
echo Task name: %TASK_NAME%
echo.
echo Press ENTER if you would like to open task scheduler to verify, or CTRL+C to stop script
pause
start taskschd.msc
pause

endlocal
