$max = 20000

$arrayList = New-Object -TypeName "System.Collections.ArrayList"

for ($a = 1; $a -le $max; $a++) {
    $arrayList.add($a) |Out-Null
}

$arrayList[-1]