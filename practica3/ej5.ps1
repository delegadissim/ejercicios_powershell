# Saber si existe una carpeta / arxivo

$ruta = Read-Host "Escribe la ruta al archivo/directorio"

if (Test-Path -Path $ruta){
    Write-Output "La ruta existe"
}
else{
    Write-Output "La ruta no existe"
}