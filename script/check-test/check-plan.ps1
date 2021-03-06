#查看计划任务情况

Write-Host "计划任务情况如下：" -ForegroundColor Red
Write-Host "============================================================"

$service = New-Object -ComObject Schedule.Service
$service.Connect($evn:dell)
$folder = $service.GetFolder("\plan")
$task = $folder.GetTask("deploy")
$res = $task.LastTaskResult
if ($res -eq 0)
{
	"$res ok"
}
elseif ($res -ne 0)
{
	"$res error"
}
# SIG # Begin signature block
# MIIEDAYJKoZIhvcNAQcCoIID/TCCA/kCAQExCzAJBgUrDgMCGgUAMGkGCisGAQQB
# gjcCAQSgWzBZMDQGCisGAQQBgjcCAR4wJgIDAQAABBAfzDtgWUsITrck0sYpfvNR
# AgEAAgEAAgEAAgEAAgEAMCEwCQYFKw4DAhoFAAQUkG78t3LBV6IiMa+u01RsKOn3
# Ak+gggIjMIICHzCCAYygAwIBAgIQ6o6P21DpMLpOfaq6b9D5KzAJBgUrDgMCHQUA
# MB8xHTAbBgNVBAMTFFBvd2VyU2hlbGwgT3JhZ2F0aW9uMB4XDTE2MTIxNzEzNTQ0
# MFoXDTM5MTIzMTIzNTk1OVowGjEYMBYGA1UEAxMPUG93ZXJTaGVsbCBUZXN0MIGf
# MA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDLqsKf3iOz7uGZF6ncn6XhkWzIKyo5
# 1TBkr+5RKmXj8O0O9DRB3hV+zvccpxpEeqC/AzS1YS+f46xg5qjQ4GgUS2J63xCX
# ZoaW7yvARaSbj275GF9dKmZuS4wuYkANYY5vPs1FSL6xNzAI4nrS6uT3QWu1OGnw
# FOrBNuLC62RMkQIDAQABo2kwZzATBgNVHSUEDDAKBggrBgEFBQcDAzBQBgNVHQEE
# STBHgBA2Y5kNXAQleQwb6MqXOVLToSEwHzEdMBsGA1UEAxMUUG93ZXJTaGVsbCBP
# cmFnYXRpb26CEHoge6jaAaeyRhPaFzC0bJIwCQYFKw4DAh0FAAOBgQA8+eTGw6Cm
# fZUKilcrPB4ncQnDL8bgJwREYdYNenJlAEp21VR/1ufOKJpY6zT0DGw2zr5xLy+H
# 9UWwuMB4gTl2eUH7PM89BDo9/O59Ff6UAmoXJ9DsEjYcskHVCOEr2aM5mo5Zu+dJ
# /SDzqXF0/Q4vgTHQ5C4B/N9HCg34VEYtojGCAVMwggFPAgEBMDMwHzEdMBsGA1UE
# AxMUUG93ZXJTaGVsbCBPcmFnYXRpb24CEOqOj9tQ6TC6Tn2qum/Q+SswCQYFKw4D
# AhoFAKB4MBgGCisGAQQBgjcCAQwxCjAIoAKAAKECgAAwGQYJKoZIhvcNAQkDMQwG
# CisGAQQBgjcCAQQwHAYKKwYBBAGCNwIBCzEOMAwGCisGAQQBgjcCARUwIwYJKoZI
# hvcNAQkEMRYEFB4JYeYCaz6bWVgw3MluH12j/PMAMA0GCSqGSIb3DQEBAQUABIGA
# XFase5oZSq+Q7pZ89T32kVC5UjsV5q2eBiR2dd9WRqE9yKHYI+ciUHabB7yYFKbg
# 1P9tIaEVkJM+Bto5yCAGxP4jF22bSNFI6d+5lvhV+wSxAbd4n0IM56g2XmILhAIF
# JFDqzdlgLa8qw+NHyW5Pe+WnaFESs4gVDQc1l/K1bVc=
# SIG # End signature block
