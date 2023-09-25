#switch con edades
clear-host

[int]$edat=Read-Host "Introduce tu edad"
switch ($edat){
    {$edat -ge 0 -and $edat -lt 4} {Write-Host "Entra de forma gratuïta"}
    {$edat -ge 4 -and $edat -lt 18} {Write-Host "Has de pagar 5€"}
    {$edat -ge 18} {Write-Host "Has de pagar 10€"}
    default {Write-Host "No es una edad valida"}
}