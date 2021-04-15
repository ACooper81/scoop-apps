scoop update; $status = scoop status
ForEach ($line in $($status -split "`r`n"))
{
    $line = $line.TrimStart()
    Write-Host $line
    $line = $line.Split(":")
    Write-Host $line
    $line = $line[0].TrimEnd()
    Write-Host $line
    iex "scoop update $line -g"
}