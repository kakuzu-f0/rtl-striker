@echo off
REM Build script for RTL Striker Flipper Zero application
REM Author: Kakuzu

echo Building RTL Striker Flipper Zero Application...

REM Check if ufbt is available
where ufbt >nul 2>nul
if %ERRORLEVEL% NEQ 0 (
    echo ERROR: ufbt Flipper Zero Build Tool not found!
    echo Please install Flipper Zero SDK and add ufbt to PATH
    pause
    exit /b 1
)

REM Clean previous builds
echo Cleaning previous builds...
if exist "build" rmdir /s /q "build"
if exist "*.fap" del "*.fap"

REM Build the application
echo Building application...
ufbt

REM Check build result
if %ERRORLEVEL% EQU 0 (
    echo SUCCESS: Build completed!
    echo FAP file should be in: build\f7\debug\rtl_striker.fap
    
    REM Copy to root for easier access
    if exist "build\f7\debug\rtl_striker.fap" (
        copy "build\f7\debug\rtl_striker.fap" ".\rtl_striker.fap" >nul
        echo SUCCESS: FAP file copied to project root
    )
    
    echo.
    echo Installation instructions:
    echo 1. Connect your Flipper Zero via USB
    echo 2. Copy rtl_striker.fap to apps\Tools\ folder on SD card
    echo 3. Reboot Flipper Zero
    echo 4. Find RTL Striker in Tools menu
    echo.
) else (
    echo ERROR: Build failed!
    echo Check the error messages above for details
)

pause
