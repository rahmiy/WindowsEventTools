Write-Host "Enumerating Windows PowerShell events"
$Event = Get-WinEvent -LogName 'Windows PowerShell'

Write-Host "Sort By Count"
$Event | Group-Object -Property Id -NoElement | Sort-Object -Property Count -Descending

Write-Host "Group By LevelDisplayName"
$Event | Group-Object -Property LevelDisplayName -NoElement
