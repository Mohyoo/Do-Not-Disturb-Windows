@echo off
echo ** Activating Do Not Disturb Mode... **
echo.

:: 1. Block Classic Win 7/Desktop Balloon Tips (also on Win 8)
REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v EnableBalloonTips /t REG_DWORD /d 0 /f
echo - Classic Bubbles Suppressed.
echo.

:: 2. Block Win 8 Metro/Toast Notifications
REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\PushNotifications" /v ToastEnabled /t REG_DWORD /d 0 /f
echo - Toast Notifications Muted.
echo.

:: Apply changes by restarting Explorer, the shell process that handles both.
TASKKILL /F /IM explorer.exe
start explorer.exe
echo.

echo ** Do Not Disturb Mode ON. Enjoy the silence! **
pause