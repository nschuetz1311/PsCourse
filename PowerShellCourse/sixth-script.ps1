[bool]$errorFound = $true
try {
    # Get-Content $pwd\nichtda.txt -ErrorAction stop
    # Import-Csv $pwd\nichtda.txt -ErrorAction stop
    Get-Content $pwd\test.txt -ErrorAction stop -ev e
    $errorFound = $false
}
catch [System.Management.Automation.ItemNotFoundException] {
    <#Do this if a terminating exception happens#>
    "Get-content failed to find the file"
    # $r = read-host "please enter the correct path to the file you want to open."
    # notepad $r
    exit
}
catch [System.IO.FileNotFoundException] {
    "Bla Bla"
}
catch [System.UnauthorizedAccessException] {
    Write-Host "You are not authorized to open this file." -ForegroundColor Yellow
}
catch {
    "I don't know what's happening"
}
finally {
    <#Do this after the try block regardless of whether an exception occurred or not#>
    Write-Host "finally is always executed" -ForegroundColor DarkCyan
    if ($errorFound) {
        $error[0].CategoryInfo.Reason
    }
}