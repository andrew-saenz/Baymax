$svcmssql = Get-WmiObject win32_service -Filter "name='MSSQLSERVER'"
$svcmssqlagent = Get-WmiObject win32_service -Filter "name='SQLSERVERAGENT'"
$svcmssql | Invoke-WmiMethod -Name Change -ArgumentList @($null,$null,$null,$null,$null,$null,$null,$null,$null,"svc-account","password")
$svcmssqlagent | Invoke-WmiMethod -Name Change -ArgumentList @($null,$null,$null,$null,$null,$null,$null,$null,$null,"svc-account","password")