#requires -Runasadministrator
#requires -version 5.1

Set-StrictMode -Version latest

$tag = Get-Date -Format "dddd"
"Heute ist $tag"

(Get-Service spooler).status

Start-Service Spooler

"Alles super"