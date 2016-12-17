#�鿴Ӳ�����
Write-Host "������Ӳ��������£�" -ForegroundColor Red
Write-Host "============================================================"
Write-Host "�̷� �ܹ�/ʣ�� G" -ForegroundColor Green

$computer = "dell";
$disks = Get-WmiObject -ComputerName $computer -Class Win32_LogicalDisk -Filter "DriveType = 3"
foreach($disk in $disks)
{
	$deviceID = $disk.DeviceID;
	$volName = $disk.VolumeName;
	[float]$size = $disk.Size;
	[float]$freespace = $disk.FreeSpace;
	$percentFree = [Math]::Round(($freespace / $size) * 100, 2);
	$sizeGB = [Math]::Round($size / 1073741824, 2);
	$freeSpaceGB = [Math]::Round($freespace / 1073741824, 2);
    $usedSpaceGB = $sizeGB - $freeSpaceGB;
	$deviceID + " " + $sizeGB + "/" + $freeSpaceGB + "(free)"
}

