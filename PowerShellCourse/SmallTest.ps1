[string[]]$pathVarTest = $env:PATH -split ';'
[bool]$varFound = $false
foreach ($singlePath in $pathVarTest) {
    if ($singlePath.Contains('MSbuild')) {
        $varFound = $true
        return
    }
}
$installedApps = Get-AppxPackage -AllUsers | select *
foreach ($app in $installedApps) {
    if ($app.name -eq "MSbuild") {
        "Msbuild is installed on this system."
        return
    }
}
"MSbuild is neither in Path nor installed"
# $varFound