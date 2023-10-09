#Saber si un numero es mayor de 18

[int] $nombre = Read-Host "Escribe tu edad"

if ($nombre -ge 18){
    Write-Output "Eres mayor de edad"
}
else{
    Write-Output "Eres menor"
}