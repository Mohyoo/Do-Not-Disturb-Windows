@echo off
echo ** Deactivating Do Not Disturb Mode... **
echo.

:: 1. Restore Classic Win 7/Desktop Balloon Tips
REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v EnableBalloonTips /t REG_DWORD /d 1 /f

:: 2. Restore Win 8 Metro/Toast Notifications
REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\PushNotifications" /v ToastEnabled /t REG_DWORD /d 1 /f
echo.

:: Apply changes
TASKKILL /F /IM explorer.exe
start explorer.exe
echo.

echo ** DND Mode OFF. Welcome back to the digital noise! **
pause