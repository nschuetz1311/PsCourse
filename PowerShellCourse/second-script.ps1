<#
.SYNOPSIS
My first Script
.Description
this script generates a amount of folders with an amount of files in it.
If you generate more than two folders the amount of files will automatically be set to 100 for those folders.
.EXAMPLE
.\second-sript.ps1 -amountFiles 5 -amountOfFolders 10
.LINK
https://google.com
#>
param(
    $baseName = "File",
    $fileExtension = ".txt",
    [parameter(Mandatory)][int64]$amountFiles,
    [parameter(Mandatory)][int64]$amountOfFolders,
    $folderName = "Folder")

$driveName = $pwd

for ($i = 1; $i -le $amountOfFolders; $i++) {
    $folderPath = Join-Path -path $driveName -ChildPath ($folderName + $i)
    if (!(Test-Path $folderPath -PathType Container)) {
        New-Item -Path $folderPath -ItemType Directory | Out-Null
    }
    if ($i -gt 2) {
        $amountFiles = 100
    }
    for ($j = 1; $j -le $amountFiles; $j++) {
        $fileName = $baseName + $j + $fileExtension
        $filePath = Join-Path -Path $folderPath -ChildPath $fileName
        if (!(Test-Path -Path $filePath -PathType Leaf)) {
            New-Item -Path $folderPath -name $fileName -ItemType File | Out-Null
        }
    }

}
