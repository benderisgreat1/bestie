Set-LocalUser -Name "henry" -Password (ConvertTo-SecureString -AsPlainText "Fr33domCloud" -Force)
Get-LocalUser -Name "henry" | Enable-LocalUser 
Invoke-WebRequest https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-windows-amd64.zip -OutFile ngrok.zip
tar xf ngrok.zip
Copy ngrok.exe C:\Windows\System32
cmd /c echo ./ngrok.exe authtoken "1yCb0DnFxXEja5xD0Iz6GusujtP_3Vodm51AtsDZWkQ99WqGh" >a.ps1
cmd /c echo cmd /k start ngrok.exe tcp 3389 >>a.ps1
cmd /c echo ping -n 999999 10.10.10.10 >>a.ps1
.\a.ps1
