# update this to wherever you have the monitor switch file downloaded
$executablePath=".\MonitorSwitcher.exe"

# if file does not exist
if (-not(Test-Path -Path $executablePath -PathType Leaf)) {
	Write-host "MonitorSwitcher.exe does not exist at $executablePath you need to build/download it first."
	return
}

$files = Get-Childitem -Path .\* -Include *.xml

if ($null -eq $files) {
	Write-host "No XML files found to present as profiles. Create some profiles using ./save-current-layout.xml."
	return
}

$i = 0
write-host 'Select a profile to load'
foreach ($file in $files) {
	write-host ' ', $i,'-',$file.BaseName.Replace("_"," ")
	$i = $i + 1
}

# subtract one for prompt to be correct
$i=$i-1
$option = Read-Host -Prompt "[0-$i or anything else to quit]"

$file=$files[$option]
if ($null -eq $file) {
	Write-host "Invalid selection, exiting"
	return
}

try {
	Start-Process -Filepath $executablePath -ArgumentList  "-load:`"$file`" -noidmatch" -Wait -NoNewWindow
}
catch {
	Write-Host $_
	Read-Host -Prompt 'Error. Press any key to continue'
}