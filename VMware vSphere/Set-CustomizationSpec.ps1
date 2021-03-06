Connect-VIServer -Credential (Get-Credential)

Get-OSCustomizationSpec $args[0]
` | Get-OSCustomizationNicMapping
` | Set-OSCustomizationNicMapping
` -IpMode:UseStaticIP
` -IpAddress (Read-Host "IP Address: ")
` -SubnetMask (Read-Host "Subnet Mask: ")
` -Dns (Read-Host "DNS Server IP: ")
` -DefaultGateway (Read-Host "Default Gateway IP: ")