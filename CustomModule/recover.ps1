$VM = Get-CimInstance -Namespace root\virtualization\v2 -ClassName Msvm_ComputerSystem -Filter "ElementName = 'WD_SERVER'"
$KVP = Get-CimInstance -Namespace root\virtualization\v2 -ClassName Msvm_KvpExchangeComponent -Filter "SystemName = '$($VM.Name)'"
($KVP.GuestIntrinsicExchangeItems | ConvertFrom-Json | Where-Object {$_.Name -eq "FullyQualifiedDomainName"}).Value

