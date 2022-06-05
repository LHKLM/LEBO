@echo off
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
if '%errorlevel%' NEQ '0' (
goto UACPrompt
) else ( goto gotAdmin )
:UACPrompt
echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs"
"%temp%\getadmin.vbs"
exit /B
:gotAdmin
if exist "%temp%\getadmin.vbs" ( del "%temp%\getadmin.vbs" )

if exist %windir%\SysWOW64 (
"%~dp0devconX64.exe" remove "%~dp0x64\VirtualUSBMonitor.inf" "hid\vid_fefe&pid_6666"
"%~dp0devconX64.exe" install "%~dp0x64\VirtualUSBMonitor.inf" "hid\vid_fefe&pid_6666"
) else (
"%~dp0devconX86.exe" remove "%~dp0x86\VirtualUSBMonitor.inf" "hid\vid_fefe&pid_6666"
"%~dp0devconX86.exe" install "%~dp0x86\VirtualUSBMonitor.inf" "hid\vid_fefe&pid_6666"
)