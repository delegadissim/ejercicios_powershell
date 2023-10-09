#Demanar edad i fer un bucle en això
Clear-Host

[int]$edat = Read-Host "Escribe tu edad"

for ($i = 1; $i -le $edat; $i++){
    Write-Host $i
}
