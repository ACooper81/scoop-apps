scoop update; $status = scoop status
ForEach ($line in $($status -split "`r`n"))
{
    $line = $line.TrimStart()
    $line = $line.Split(":")
    $line = $line[0].TrimEnd()
    iex scoop update $line -g
}