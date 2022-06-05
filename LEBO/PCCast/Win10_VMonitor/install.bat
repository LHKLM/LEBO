@echo off
if exist %windir%\SysWOW64 (
"%~dp0devconX64.exe" remove "%~dp0x64\VirtualUSBMonitor.inf" "hid\vid_fefe&pid_6666"
"%~dp0devconX64.exe" install "%~dp0x64\VirtualUSBMonitor.inf" "hid\vid_fefe&pid_6666"
) else (
"%~dp0devconX86.exe" remove "%~dp0x86\VirtualUSBMonitor.inf" "hid\vid_fefe&pid_6666"
"%~dp0devconX86.exe" install "%~dp0x86\VirtualUSBMonitor.inf" "hid\vid_fefe&pid_6666"
)