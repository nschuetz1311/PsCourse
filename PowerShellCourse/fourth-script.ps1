
function read-drive-size {
    <#
    .SYNOPSIS
    This ist my first CMDLet
    #>
    param(
        [char]$userInput = (Read-Host ("which drive do you want to check"))
    )
    # "which drive do you want to check"
    $drive = $userInput + ":"
    if (!(Test-Path $drive)) {
        "drive $drive does not exist"
        return
    }
    Get-CimInstance Win32_LogicalDisk | Where-Object DeviceID -eq $drive
}

read-drive-size