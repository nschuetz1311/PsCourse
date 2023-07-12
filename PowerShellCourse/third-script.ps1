$topLevelFolders = Get-ChildItem -Directory
foreach ($folder in $topLevelFolders ) {
    $folderContent = Get-ChildItem -Path $folder.FullName -File
    foreach ($file in $folderContent) {
        $moddedName = ($folder.BaseName + '_' + $file.Name)
        Rename-Item -Path $file.FullName -NewName $moddedName | Out-Null
    }
}