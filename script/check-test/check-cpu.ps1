#服务器CPU、内存
$Server = "dell"
$cpu = gwmi –computername $Server win32_Processor
$men = gwmi -ComputerName $Server win32_OperatingSystem
$Disks = gwmi –computername $Server win32_logicaldisk -filter "drivetype=3"
$Havecpu = "{0:0.0} %" -f $cpu.LoadPercentage
$Allmen = "{0:0.0} MB" -f ($men.TotalVisibleMemorySize  / 1KB)
$Freemen = "{0:0.0} MB" -f ($men.FreePhysicalMemory  / 1KB)
$Permem =  "{0:0.0} %" -f ((($men.TotalVisibleMemorySize-$men.FreePhysicalMemory)/$men.TotalVisibleMemorySize)*100)
Write-Host "服务器$Server 当前系统状态信息如下：" -ForegroundColor Red
Write-Host "============================================================"
Write-Host "CPU利用率： $Havecpu"   -ForegroundColor Green
Write-Host "内存总数：$Allmen"  -ForegroundColor Green
Write-Host "内存可用数：$Freemen"  -ForegroundColor Green
Write-Host "内存使用率：$Permem"  -ForegroundColor Green
# SIG # Begin signature block
# MIIEDAYJKoZIhvcNAQcCoIID/TCCA/kCAQExCzAJBgUrDgMCGgUAMGkGCisGAQQB
# gjcCAQSgWzBZMDQGCisGAQQBgjcCAR4wJgIDAQAABBAfzDtgWUsITrck0sYpfvNR
# AgEAAgEAAgEAAgEAAgEAMCEwCQYFKw4DAhoFAAQUyssE8AALfwiG4o5YAr/cRj1J
# ZLmgggIjMIICHzCCAYygAwIBAgIQ6o6P21DpMLpOfaq6b9D5KzAJBgUrDgMCHQUA
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
# hvcNAQkEMRYEFLZHeXvHEkC13mu3K/hdLJXE7J8EMA0GCSqGSIb3DQEBAQUABIGA
# gPbatpb7b4+pnOhZPGSkM5IDWdpmm0U2cKL/FkDfdy71yzPKnTg9bOHEIJzlnaCv
# BmSU3eHKlEnH7Nv8Wf3j4iAdq6xwtD6nyvsHxXoXwb8azVKFRtnQ+O51pEGrXVe+
# vdWxLzaYHy68lXKCB9TQcT8n75UUreTNLQrmdgIedIk=
# SIG # End signature block
