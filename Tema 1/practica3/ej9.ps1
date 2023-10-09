#Predictor de la renta
clear-host

[int]$diners = Read-Host "Escribe tu renta anual"

switch ($diners){
    {($diners -ge 0 -and $diners -le 10000)}{
        Write-Output "Tu tipo impositivo es del 5%"
    }{($diners -gt 10000 -and $diners -le 20000)}{
        Write-Output "Tu tipo impositivo es del 15%"
    }{($diners -gt 20000 -and $diners -le 35000)}{
        Write-Output "Tu tipo impositivo es del 20%"
    }{($diners -gt 35000 -and $diners -le 60000)}{
        Write-Output "Tu tipo impositivo es del 30%"
    }{($diners -gt 60000)}{
        Write-Output "Tu tipo impositivo es del 45%"
    }


}