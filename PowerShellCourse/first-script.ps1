$driveName = $pwd
$folderName = "Folder1"
$pathVar = Join-Path -path $driveName -ChildPath $folderName

if (!(Test-Path $pathVar -PathType Container)) {
    New-Item -Path $pathVar -ItemType Directory |Out-Null
}

