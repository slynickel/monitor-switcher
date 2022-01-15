# update this to wherever you have the monitor switch file downloaded
$executablePath=".\MonitorSwitcher.exe"
$file = Read-Host -Prompt 'To save current monitor configuration enter a file name prefix (do not include .xml). Underscores will be rendered in the menu options as spaces.'
Start-Process -Filepath $executablePath -ArgumentList  "-save:`"$file`.xml" -Wait -NoNewWindow