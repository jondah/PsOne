$action = New-ScheduledTaskAction -Execute 'c:\users\j2017770\downloads\d42_winagent_x64.exe' 
$DELAY = new-timespan -minutes 8
$trigger =  New-ScheduledTaskTrigger -atlogon -randomdelay $DELAY 
$principal = New-ScheduledTaskPrincipal -UserId "system" -LogonType ServiceAccount


Register-ScheduledTask -Action $action -Trigger $trigger -TaskName "D42 Agent" -Description "Device42 agent" -Principal $principal