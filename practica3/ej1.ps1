#Saber si un numero es par o impar

[int] $nombre = Read-Host "Escribe el numero que quieres saber
si es par o impar"

if ($nombre % 2 -eq 0){
    Write-Output "El numero es par"
}
else{
    Write-Output "El numero es impar"
}