@echo off
set "CURRENT_DIR=%~dp0"
:: Removing trailing backslash
set "CURRENT_DIR=%CURRENT_DIR:~0,-1%"

:: Set local user folder to store data inside d:\n8n\user_data
set "N8N_USER_FOLDER=%CURRENT_DIR%\user_data"

:: Ensure the directory exists
if not exist "%N8N_USER_FOLDER%" mkdir "%N8N_USER_FOLDER%"

echo ===================================================
echo Starting n8n in LOCAL MODE
echo User Data: %N8N_USER_FOLDER%
echo ===================================================

:: Run n8n using local npm packages
call npm start

pause
