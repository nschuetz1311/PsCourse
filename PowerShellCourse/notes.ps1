Get-Process [a-c]* |Select-Object Name,@{Label="CPU";Expression={[math]::Round($_.cpu,2)}}
Get-Process [a-c]* |Format-Table Name,@{Label="CPU";Expression={[math]::Round($_.cpu,2)};align="center"}
Get-Process |where-object cpu -gt 100
Get-Process |where-object cpu -gt 100 | where-object Name -Like a*
Get-Process |where-object {$_.cpu -gt 100 -or $_.cpu -lt 0.05}
Get-Process |where-object {$_.cpu -gt 100 -or ($_.cpu -lt 0.05 -and $_.Name -like "m*")}
Get-Process |sort-object -property cpu -descending
Get-Process |sort-object -property cpu -descending |Select-Object -first 10
Get-Process |sort-object -property cpu -descending |Select-Object Name,Id,Cpu -first 10
Get-Process |sort-object -property cpu |Select-Object Name,Id,Cpu -last 10
Get-Process |sort-object -property cpu |Select-Object Name,Id,@{Label="CPU"; Expression={[math]::Round($_.cpu, 2)}} -last 10
Get-Process |sort-object -property name,id
(Get-Process).length
Get-Process |Measure-Object
Get-Volume |Measure-Object -property size -sum
(get-volume |Measure-Object -property size -sum) |Select-Object -expandProperty sum
$b = (get-volume |Measure-Object -property size -sum)
$b.Sum
$pw=Read-Host "please enter Password" -AsSecureString
$pw
New-Item -Path C:\Users\Administrator\PowerShellCourse\ -name Test -ItemType Directory
New-Item -Path C:\Users\Administrator\PowerShellCourse\ -name Test -ItemType Directory | Out-Null

$Pw = convertto-securestring -asPlainText "P@assw0rd" -force
$Pw |export-clixml $pwd\kw.xml
New-localUser test -Password (import-Clixml $pwd\kw.xml)

# --% makes sure that trailing characters are used as parameters without being parsed by the powershell
icacls --% c:\icacls\ /grant Administrator:(D,wdac)

# Filter is written in SQL
$xps_printer = Get-CimInstance Win32_Printer -Filter "Name like '%xps%'"
Invoke-CimMethod -InputObject $xps_printer -MethodName SetDefaultPrinter




# SIG # Begin signature block
# MIIbjwYJKoZIhvcNAQcCoIIbgDCCG3wCAQExCzAJBgUrDgMCGgUAMGkGCisGAQQB
# gjcCAQSgWzBZMDQGCisGAQQBgjcCAR4wJgIDAQAABBAfzDtgWUsITrck0sYpfvNR
# AgEAAgEAAgEAAgEAAgEAMCEwCQYFKw4DAhoFAAQU6e9uJyp8JxoH2m0qrTjxm+GC
# 3TCgghYJMIIC/jCCAeagAwIBAgIQbO6ohk0D55NLVLZigvwwxDANBgkqhkiG9w0B
# AQsFADAXMRUwEwYDVQQDDAxOaWtvQE1haWwuZGUwHhcNMjMwNzEyMTE1MjU5WhcN
# MjQwNzEyMTIxMjU5WjAXMRUwEwYDVQQDDAxOaWtvQE1haWwuZGUwggEiMA0GCSqG
# SIb3DQEBAQUAA4IBDwAwggEKAoIBAQC9zh5ZLQPfCuFe3ePtIcvTMGaJiwuyoh5G
# vf7eLf+gjwBnoqcdAQS4T317jtcQ19k5Azpemnf8kmyAZo5iG0nrIHH2dZDyjUKs
# I+QQjXG5FgUQ23xpEGunTU7rjmAA8IJiu1+imR2NIBgDOK5imINr5k/cZcZxt3aM
# V71xfa2wjBOlqnp5UQ0+F1L5MeSA9UufGskCK4vrum07UQ+3lxyhuu+2RGXaDGB/
# YIplv9TTiXj5swiAaIrjb4UtJOemnMgaY6/sv3ypGbfAsHQ6XVfnxv1m/eEn5lM7
# TXCet98yMHOZiY62DyGM7PMpFgcAD7vY44in/elHhm66yrkirerpAgMBAAGjRjBE
# MA4GA1UdDwEB/wQEAwIHgDATBgNVHSUEDDAKBggrBgEFBQcDAzAdBgNVHQ4EFgQU
# xuJhop9C/qqAWqz1vQsSGA8h/k4wDQYJKoZIhvcNAQELBQADggEBADUVX+wyOIQ7
# DEMoQvdoR7vIxHYBFPJz+Ok3diEl6b5LlM0HixpeVvkwxY8PYNv4qsa35lZuZsRZ
# GB8s7rSU1bvgLl7xdz44mmzfzNlPcvUL6wxIMfEKYLzpkpachFymSx61pPZ80crG
# Z++YnzRQt/X0JdSYRnOfYcSeE1N5ArPsGmJTVPPKy50M1UoUDCbQXKfXKUf4XpRL
# /AdNvO6AWyQAvQEUmRjlYSYDN87b1mvvoB4/1TzRvcLqNPuHQsJRKz4FGTf4a49o
# PEBUsW1OHpse+8p7CjiWfOz/2MgcUjzoQ0FNRD8jzJe+EA7h/oZmTpuByDqFVXfX
# +A7Slz+dB/swggWNMIIEdaADAgECAhAOmxiO+dAt5+/bUOIIQBhaMA0GCSqGSIb3
# DQEBDAUAMGUxCzAJBgNVBAYTAlVTMRUwEwYDVQQKEwxEaWdpQ2VydCBJbmMxGTAX
# BgNVBAsTEHd3dy5kaWdpY2VydC5jb20xJDAiBgNVBAMTG0RpZ2lDZXJ0IEFzc3Vy
# ZWQgSUQgUm9vdCBDQTAeFw0yMjA4MDEwMDAwMDBaFw0zMTExMDkyMzU5NTlaMGIx
# CzAJBgNVBAYTAlVTMRUwEwYDVQQKEwxEaWdpQ2VydCBJbmMxGTAXBgNVBAsTEHd3
# dy5kaWdpY2VydC5jb20xITAfBgNVBAMTGERpZ2lDZXJ0IFRydXN0ZWQgUm9vdCBH
# NDCCAiIwDQYJKoZIhvcNAQEBBQADggIPADCCAgoCggIBAL/mkHNo3rvkXUo8MCIw
# aTPswqclLskhPfKK2FnC4SmnPVirdprNrnsbhA3EMB/zG6Q4FutWxpdtHauyefLK
# EdLkX9YFPFIPUh/GnhWlfr6fqVcWWVVyr2iTcMKyunWZanMylNEQRBAu34LzB4Tm
# dDttceItDBvuINXJIB1jKS3O7F5OyJP4IWGbNOsFxl7sWxq868nPzaw0QF+xembu
# d8hIqGZXV59UWI4MK7dPpzDZVu7Ke13jrclPXuU15zHL2pNe3I6PgNq2kZhAkHnD
# eMe2scS1ahg4AxCN2NQ3pC4FfYj1gj4QkXCrVYJBMtfbBHMqbpEBfCFM1LyuGwN1
# XXhm2ToxRJozQL8I11pJpMLmqaBn3aQnvKFPObURWBf3JFxGj2T3wWmIdph2PVld
# QnaHiZdpekjw4KISG2aadMreSx7nDmOu5tTvkpI6nj3cAORFJYm2mkQZK37AlLTS
# YW3rM9nF30sEAMx9HJXDj/chsrIRt7t/8tWMcCxBYKqxYxhElRp2Yn72gLD76GSm
# M9GJB+G9t+ZDpBi4pncB4Q+UDCEdslQpJYls5Q5SUUd0viastkF13nqsX40/ybzT
# QRESW+UQUOsxxcpyFiIJ33xMdT9j7CFfxCBRa2+xq4aLT8LWRV+dIPyhHsXAj6Kx
# fgommfXkaS+YHS312amyHeUbAgMBAAGjggE6MIIBNjAPBgNVHRMBAf8EBTADAQH/
# MB0GA1UdDgQWBBTs1+OC0nFdZEzfLmc/57qYrhwPTzAfBgNVHSMEGDAWgBRF66Kv
# 9JLLgjEtUYunpyGd823IDzAOBgNVHQ8BAf8EBAMCAYYweQYIKwYBBQUHAQEEbTBr
# MCQGCCsGAQUFBzABhhhodHRwOi8vb2NzcC5kaWdpY2VydC5jb20wQwYIKwYBBQUH
# MAKGN2h0dHA6Ly9jYWNlcnRzLmRpZ2ljZXJ0LmNvbS9EaWdpQ2VydEFzc3VyZWRJ
# RFJvb3RDQS5jcnQwRQYDVR0fBD4wPDA6oDigNoY0aHR0cDovL2NybDMuZGlnaWNl
# cnQuY29tL0RpZ2lDZXJ0QXNzdXJlZElEUm9vdENBLmNybDARBgNVHSAECjAIMAYG
# BFUdIAAwDQYJKoZIhvcNAQEMBQADggEBAHCgv0NcVec4X6CjdBs9thbX979XB72a
# rKGHLOyFXqkauyL4hxppVCLtpIh3bb0aFPQTSnovLbc47/T/gLn4offyct4kvFID
# yE7QKt76LVbP+fT3rDB6mouyXtTP0UNEm0Mh65ZyoUi0mcudT6cGAxN3J0TU53/o
# Wajwvy8LpunyNDzs9wPHh6jSTEAZNUZqaVSwuKFWjuyk1T3osdz9HNj0d1pcVIxv
# 76FQPfx2CWiEn2/K2yCNNWAcAgPLILCsWKAOQGPFmCLBsln1VWvPJ6tsds5vIy30
# fnFqI2si/xK4VC0nftg62fC2h5b9W9FcrBjDTZ9ztwGpn1eqXijiuZQwggauMIIE
# lqADAgECAhAHNje3JFR82Ees/ShmKl5bMA0GCSqGSIb3DQEBCwUAMGIxCzAJBgNV
# BAYTAlVTMRUwEwYDVQQKEwxEaWdpQ2VydCBJbmMxGTAXBgNVBAsTEHd3dy5kaWdp
# Y2VydC5jb20xITAfBgNVBAMTGERpZ2lDZXJ0IFRydXN0ZWQgUm9vdCBHNDAeFw0y
# MjAzMjMwMDAwMDBaFw0zNzAzMjIyMzU5NTlaMGMxCzAJBgNVBAYTAlVTMRcwFQYD
# VQQKEw5EaWdpQ2VydCwgSW5jLjE7MDkGA1UEAxMyRGlnaUNlcnQgVHJ1c3RlZCBH
# NCBSU0E0MDk2IFNIQTI1NiBUaW1lU3RhbXBpbmcgQ0EwggIiMA0GCSqGSIb3DQEB
# AQUAA4ICDwAwggIKAoICAQDGhjUGSbPBPXJJUVXHJQPE8pE3qZdRodbSg9GeTKJt
# oLDMg/la9hGhRBVCX6SI82j6ffOciQt/nR+eDzMfUBMLJnOWbfhXqAJ9/UO0hNoR
# 8XOxs+4rgISKIhjf69o9xBd/qxkrPkLcZ47qUT3w1lbU5ygt69OxtXXnHwZljZQp
# 09nsad/ZkIdGAHvbREGJ3HxqV3rwN3mfXazL6IRktFLydkf3YYMZ3V+0VAshaG43
# IbtArF+y3kp9zvU5EmfvDqVjbOSmxR3NNg1c1eYbqMFkdECnwHLFuk4fsbVYTXn+
# 149zk6wsOeKlSNbwsDETqVcplicu9Yemj052FVUmcJgmf6AaRyBD40NjgHt1bicl
# kJg6OBGz9vae5jtb7IHeIhTZgirHkr+g3uM+onP65x9abJTyUpURK1h0QCirc0PO
# 30qhHGs4xSnzyqqWc0Jon7ZGs506o9UD4L/wojzKQtwYSH8UNM/STKvvmz3+Drhk
# Kvp1KCRB7UK/BZxmSVJQ9FHzNklNiyDSLFc1eSuo80VgvCONWPfcYd6T/jnA+bIw
# pUzX6ZhKWD7TA4j+s4/TXkt2ElGTyYwMO1uKIqjBJgj5FBASA31fI7tk42PgpuE+
# 9sJ0sj8eCXbsq11GdeJgo1gJASgADoRU7s7pXcheMBK9Rp6103a50g5rmQzSM7TN
# sQIDAQABo4IBXTCCAVkwEgYDVR0TAQH/BAgwBgEB/wIBADAdBgNVHQ4EFgQUuhbZ
# bU2FL3MpdpovdYxqII+eyG8wHwYDVR0jBBgwFoAU7NfjgtJxXWRM3y5nP+e6mK4c
# D08wDgYDVR0PAQH/BAQDAgGGMBMGA1UdJQQMMAoGCCsGAQUFBwMIMHcGCCsGAQUF
# BwEBBGswaTAkBggrBgEFBQcwAYYYaHR0cDovL29jc3AuZGlnaWNlcnQuY29tMEEG
# CCsGAQUFBzAChjVodHRwOi8vY2FjZXJ0cy5kaWdpY2VydC5jb20vRGlnaUNlcnRU
# cnVzdGVkUm9vdEc0LmNydDBDBgNVHR8EPDA6MDigNqA0hjJodHRwOi8vY3JsMy5k
# aWdpY2VydC5jb20vRGlnaUNlcnRUcnVzdGVkUm9vdEc0LmNybDAgBgNVHSAEGTAX
# MAgGBmeBDAEEAjALBglghkgBhv1sBwEwDQYJKoZIhvcNAQELBQADggIBAH1ZjsCT
# tm+YqUQiAX5m1tghQuGwGC4QTRPPMFPOvxj7x1Bd4ksp+3CKDaopafxpwc8dB+k+
# YMjYC+VcW9dth/qEICU0MWfNthKWb8RQTGIdDAiCqBa9qVbPFXONASIlzpVpP0d3
# +3J0FNf/q0+KLHqrhc1DX+1gtqpPkWaeLJ7giqzl/Yy8ZCaHbJK9nXzQcAp876i8
# dU+6WvepELJd6f8oVInw1YpxdmXazPByoyP6wCeCRK6ZJxurJB4mwbfeKuv2nrF5
# mYGjVoarCkXJ38SNoOeY+/umnXKvxMfBwWpx2cYTgAnEtp/Nh4cku0+jSbl3ZpHx
# cpzpSwJSpzd+k1OsOx0ISQ+UzTl63f8lY5knLD0/a6fxZsNBzU+2QJshIUDQtxMk
# zdwdeDrknq3lNHGS1yZr5Dhzq6YBT70/O3itTK37xJV77QpfMzmHQXh6OOmc4d0j
# /R0o08f56PGYX/sr2H7yRp11LB4nLCbbbxV7HhmLNriT1ObyF5lZynDwN7+YAN8g
# Fk8n+2BnFqFmut1VwDophrCYoCvtlUG3OtUVmDG0YgkPCr2B2RP+v6TR81fZvAT6
# gt4y3wSJ8ADNXcL50CN/AAvkdgIm2fBldkKmKYcJRyvmfxqkhQ/8mJb2VVQrH4D6
# wPIOK+XW+6kvRBVK5xMOHds3OBqhK/bt1nz8MIIGwDCCBKigAwIBAgIQDE1pckuU
# +jwqSj0pB4A9WjANBgkqhkiG9w0BAQsFADBjMQswCQYDVQQGEwJVUzEXMBUGA1UE
# ChMORGlnaUNlcnQsIEluYy4xOzA5BgNVBAMTMkRpZ2lDZXJ0IFRydXN0ZWQgRzQg
# UlNBNDA5NiBTSEEyNTYgVGltZVN0YW1waW5nIENBMB4XDTIyMDkyMTAwMDAwMFoX
# DTMzMTEyMTIzNTk1OVowRjELMAkGA1UEBhMCVVMxETAPBgNVBAoTCERpZ2lDZXJ0
# MSQwIgYDVQQDExtEaWdpQ2VydCBUaW1lc3RhbXAgMjAyMiAtIDIwggIiMA0GCSqG
# SIb3DQEBAQUAA4ICDwAwggIKAoICAQDP7KUmOsap8mu7jcENmtuh6BSFdDMaJqzQ
# HFUeHjZtvJJVDGH0nQl3PRWWCC9rZKT9BoMW15GSOBwxApb7crGXOlWvM+xhiumm
# KNuQY1y9iVPgOi2Mh0KuJqTku3h4uXoW4VbGwLpkU7sqFudQSLuIaQyIxvG+4C99
# O7HKU41Agx7ny3JJKB5MgB6FVueF7fJhvKo6B332q27lZt3iXPUv7Y3UTZWEaOOA
# y2p50dIQkUYp6z4m8rSMzUy5Zsi7qlA4DeWMlF0ZWr/1e0BubxaompyVR4aFeT4M
# XmaMGgokvpyq0py2909ueMQoP6McD1AGN7oI2TWmtR7aeFgdOej4TJEQln5N4d3C
# raV++C0bH+wrRhijGfY59/XBT3EuiQMRoku7mL/6T+R7Nu8GRORV/zbq5Xwx5/PC
# UsTmFntafqUlc9vAapkhLWPlWfVNL5AfJ7fSqxTlOGaHUQhr+1NDOdBk+lbP4PQK
# 5hRtZHi7mP2Uw3Mh8y/CLiDXgazT8QfU4b3ZXUtuMZQpi+ZBpGWUwFjl5S4pkKa3
# YWT62SBsGFFguqaBDwklU/G/O+mrBw5qBzliGcnWhX8T2Y15z2LF7OF7ucxnEwea
# wXjtxojIsG4yeccLWYONxu71LHx7jstkifGxxLjnU15fVdJ9GSlZA076XepFcxyE
# ftfO4tQ6dwIDAQABo4IBizCCAYcwDgYDVR0PAQH/BAQDAgeAMAwGA1UdEwEB/wQC
# MAAwFgYDVR0lAQH/BAwwCgYIKwYBBQUHAwgwIAYDVR0gBBkwFzAIBgZngQwBBAIw
# CwYJYIZIAYb9bAcBMB8GA1UdIwQYMBaAFLoW2W1NhS9zKXaaL3WMaiCPnshvMB0G
# A1UdDgQWBBRiit7QYfyPMRTtlwvNPSqUFN9SnDBaBgNVHR8EUzBRME+gTaBLhklo
# dHRwOi8vY3JsMy5kaWdpY2VydC5jb20vRGlnaUNlcnRUcnVzdGVkRzRSU0E0MDk2
# U0hBMjU2VGltZVN0YW1waW5nQ0EuY3JsMIGQBggrBgEFBQcBAQSBgzCBgDAkBggr
# BgEFBQcwAYYYaHR0cDovL29jc3AuZGlnaWNlcnQuY29tMFgGCCsGAQUFBzAChkxo
# dHRwOi8vY2FjZXJ0cy5kaWdpY2VydC5jb20vRGlnaUNlcnRUcnVzdGVkRzRSU0E0
# MDk2U0hBMjU2VGltZVN0YW1waW5nQ0EuY3J0MA0GCSqGSIb3DQEBCwUAA4ICAQBV
# qioa80bzeFc3MPx140/WhSPx/PmVOZsl5vdyipjDd9Rk/BX7NsJJUSx4iGNVCUY5
# APxp1MqbKfujP8DJAJsTHbCYidx48s18hc1Tna9i4mFmoxQqRYdKmEIrUPwbtZ4I
# MAn65C3XCYl5+QnmiM59G7hqopvBU2AJ6KO4ndetHxy47JhB8PYOgPvk/9+dEKfr
# ALpfSo8aOlK06r8JSRU1NlmaD1TSsht/fl4JrXZUinRtytIFZyt26/+YsiaVOBmI
# RBTlClmia+ciPkQh0j8cwJvtfEiy2JIMkU88ZpSvXQJT657inuTTH4YBZJwAwula
# dHUNPeF5iL8cAZfJGSOA1zZaX5YWsWMMxkZAO85dNdRZPkOaGK7DycvD+5sTX2q1
# x+DzBcNZ3ydiK95ByVO5/zQQZ/YmMph7/lxClIGUgp2sCovGSxVK05iQRWAzgOAj
# 3vgDpPZFR+XOuANCR+hBNnF3rf2i6Jd0Ti7aHh2MWsgemtXC8MYiqE+bvdgcmlHE
# L5r2X6cnl7qWLoVXwGDneFZ/au/ClZpLEQLIgpzJGgV8unG1TnqZbPTontRamMif
# v427GFxD9dAq6OJi7ngE273R+1sKqHB+8JeEeOMIA11HLGOoJTiXAdI/Otrl5fbm
# m9x+LMz/F0xNAKLY1gEOuIvu5uByVYksJxlh9ncBjDGCBPAwggTsAgEBMCswFzEV
# MBMGA1UEAwwMTmlrb0BNYWlsLmRlAhBs7qiGTQPnk0tUtmKC/DDEMAkGBSsOAwIa
# BQCgeDAYBgorBgEEAYI3AgEMMQowCKACgAChAoAAMBkGCSqGSIb3DQEJAzEMBgor
# BgEEAYI3AgEEMBwGCisGAQQBgjcCAQsxDjAMBgorBgEEAYI3AgEVMCMGCSqGSIb3
# DQEJBDEWBBQC4s655tYCDV9G6z1myt2+x9k5ATANBgkqhkiG9w0BAQEFAASCAQAV
# pnv4D3hxG8zQk3DSQ9oIyxoA/tyBpKWsYjAI5GEsEKPEXtFm9bdDYl9yAB5jGAY6
# 6wzAiL3D0PbyfiZObIbPkk2rifvS0hVBcGyacP4P3MMQVbNXlKP3bSM8PEa2XShf
# M9HNRTE/BkGcWfO2INVwKo0q4vlDmKlGQRa52ImQwEvbDoeuVZTOzLJZcDy9Xf/W
# RAzE5chODYLo5DbiGJ3bZfrPfWrc/93EekCgQuiRM9it5BISxFxKEgPG2Y+0ROb1
# 1HuztQt0znUt6hbXE7d4I5pput7n6HmK6rmx3kWYpdndnr1f8ktrQ2Zi+3NhRy1U
# xxXgoEFo/IXZQXJFmvh0oYIDIDCCAxwGCSqGSIb3DQEJBjGCAw0wggMJAgEBMHcw
# YzELMAkGA1UEBhMCVVMxFzAVBgNVBAoTDkRpZ2lDZXJ0LCBJbmMuMTswOQYDVQQD
# EzJEaWdpQ2VydCBUcnVzdGVkIEc0IFJTQTQwOTYgU0hBMjU2IFRpbWVTdGFtcGlu
# ZyBDQQIQDE1pckuU+jwqSj0pB4A9WjANBglghkgBZQMEAgEFAKBpMBgGCSqGSIb3
# DQEJAzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTIzMDcxMjEyMjIwNVow
# LwYJKoZIhvcNAQkEMSIEIAaRySV924naWWOaQYUGkBMViTAxt7N4MF5VTh46sWqc
# MA0GCSqGSIb3DQEBAQUABIICAIpUnkf7pad6/GLvnsvj/izxHaqnkIjN3ZMT9t7Y
# FurQ8CpczyEeiGa4NIXDwbl1RwaTqEZj/8CKmE+FOok3z1kJzo0vHbvzYX43mVjx
# yIvWwnietNNuB2bIC4zIeRfk5nZDKuIUx5iIkC87V2zOEAivmvP9QyVBNrRdoTHq
# RNXWfRljt58WIvXJ0ZmmEfBBaAr6K5m4susMIqecOPK3Cq0V4EQyT2C3rFj1SxJ6
# uS3acjUG3cJ7eh+IuZXjAO8OHRq3zhJaCag0saPrbxybvZvuolNag+Z48uwTRkk3
# vbsz5m5RqJPC+MzWMXkmm/vJ7290nBwtI/roEH1Fse4cj92pg9g0lea0vPVRChSF
# 3tYQIM01G1OvggBzH191ZLqhswSMoi8byduFt8amKZkixw93sFDSjDbBgN/8sHie
# K6zgoQsUf8Mm08kttik0biyRGSOyhG5Vl1hsFvoDGMTzBebs57kvThB0QUJfnbbL
# kWtplElkKQeMidGF1MU2CcCx483+/vlSRmqq5lR3B62/PPMCxoK3dkIRoSm0CR+m
# t1EdYUjAteo+W7ooX/vt7+PLEkFXsUWYS4LaPM5AdiCn/OGdLfL2wHjfSOsYNkC/
# LGmX7EpOeHIuR8wc2i7pbwK8E8+PlDxzrueAeWyh/nN36agR9oeTvL+wnWvsQcdg
# LVg/
# SIG # End signature block
