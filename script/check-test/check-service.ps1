#查看服务运行情况


Write-Host "服务器服务运行情况如下：" -ForegroundColor Red
Write-Host "============================================================"

$service = Get-Service -name "Spooler"
$status = $service.Status
if ("$status" -eq "Running")
{
	$service.name + " ok"
}
else
{
	$service.name + " error!!!"
}

