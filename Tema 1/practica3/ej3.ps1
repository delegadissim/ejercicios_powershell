#Saber si un numero es mayor o menor q otro

[int] $nombre = Read-Host "Escribe tu primer numero"
[int] $nombre2 = Read-Host "Escribe tu segundo numero"

if ($nombre -lt $nombre2){
    Write-Output "El primer numero es menor que el segundo"
}elseif($nombre -eq $nombre2){
    Write-Output "El primer numero es igual que el segundo"
}
else{
    Write-Output "El primer numero es mayor que el segundo"
}