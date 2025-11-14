@echo off
setlocal ENABLEDELAYEDEXPANSION

REM === CONFIGURATION ===
set "ROOT_DIR=%~dp0.."
set "WORKSHOP_ID=3595625893"
set "PUBLISHER_CMD=C:\Program Files (x86)\Steam\steamapps\common\Arma 3 Tools\Publisher\PublisherCmd.exe"

cd /d "%ROOT_DIR%"

echo.
echo [EHB] ====================================================
echo [EHB]   Echo Hand Battalion - Auto Build ^& Workshop Upload
echo [EHB] ====================================================

REM === STEP 1: INCREMENT BUILD VERSION ===
echo [EHB] Incrementing build version...
hemtt script update_build

REM === STEP 2: BUILD RELEASE (creates ZIP files) ===
echo [EHB] Building mod for release...
hemtt release

REM === STEP 3: FIND AND EXTRACT LATEST RELEASE ZIP ===
set "RELEASES_DIR=%ROOT_DIR%\releases"
set "LATEST_ZIP="
for /f "delims=" %%A in ('dir /b /a-d /od "%RELEASES_DIR%\EHB-*.zip" 2^>nul') do set "LATEST_ZIP=%RELEASES_DIR%\%%A"

if not defined LATEST_ZIP (
    echo [EHB] ❌ ERROR: No release ZIP found in %RELEASES_DIR%.
    pause
    exit /b
)

echo [EHB] Extracting latest release: !LATEST_ZIP! ...
set "RELEASE_DIR=%RELEASES_DIR%\@EHB_AuxMod"

REM --- Clear old extracted folder if it exists ---
if exist "%RELEASE_DIR%" rd /s /q "%RELEASE_DIR%"

REM --- Extract ZIP and flatten one subfolder level ---
powershell -NoProfile -Command ^
    "Expand-Archive -Path '!LATEST_ZIP!' -DestinationPath '%RELEASES_DIR%\temp' -Force; ^
     $sub = Get-ChildItem '%RELEASES_DIR%\temp' | Where-Object { $_.PSIsContainer } | Select-Object -First 1; ^
     if ($sub) { Move-Item $sub.FullName '%RELEASE_DIR%' -Force }; ^
     Remove-Item '%RELEASES_DIR%\temp' -Recurse -Force"

if not exist "%RELEASE_DIR%\addons" (
    echo [EHB] ❌ ERROR: Extracted release missing addons folder!
    pause
    exit /b
)

REM === STEP 4: CREATE CHANGELOG ===
set "CHANGELOG=Published on %DATE% %TIME%"

REM === STEP 5: START TIMER & UPLOAD TO WORKSHOP ===
for /f "tokens=1-4 delims=:. " %%a in ("%TIME%") do (
    set "START_H=%%a"
    set "START_M=%%b"
    set "START_S=%%c"
)

echo [EHB] Uploading to Steam Workshop (ID: %WORKSHOP_ID%)...
"%PUBLISHER_CMD%" update /id:%WORKSHOP_ID% /changeNote:"%CHANGELOG%" /path:"%RELEASE_DIR%"
set "UPLOAD_RESULT=%errorlevel%"

for /f "tokens=1-4 delims=:. " %%a in ("%TIME%") do (
    set "END_H=%%a"
    set "END_M=%%b"
    set "END_S=%%c"
)

REM --- Calculate elapsed time in seconds ---
set /a "START_T=((1%START_H%-100)*3600)+((1%START_M%-100)*60)+(1%START_S%-100)"
set /a "END_T=((1%END_H%-100)*3600)+((1%END_M%-100)*60)+(1%END_S%-100)"
set /a "ELAPSED=%END_T%-%START_T%"
if %ELAPSED% LSS 0 set /a "ELAPSED+=86400"

set /a "ELAPSED_M=%ELAPSED%/60"
set /a "ELAPSED_S=%ELAPSED%%%60"

echo [EHB] Upload took !ELAPSED_M!m !ELAPSED_S!s

if %UPLOAD_RESULT% NEQ 0 (
    echo [EHB] ❌ Workshop upload failed!
    pause
    exit /b
)

REM === STEP 6: OPEN WORKSHOP PAGE ===
echo [EHB] Opening Workshop page...
start https://steamcommunity.com/sharedfiles/filedetails/?id=%WORKSHOP_ID%

echo.
echo [EHB] ✅ Workshop upload complete!
pause
