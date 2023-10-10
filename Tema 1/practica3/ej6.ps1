# Saber si existe una carpeta / arxivo y hace ls
clear-host
$ruta = Read-Host "Escribe la ruta al archivo/directorio"

if (Test-Path -PathType Container $ruta){
    Write-Output "La ruta existe y es un directorio"
    Get-ChildItem -Recurse $ruta
}
elseif (Test-Path -Path $ruta){
    Write-Output "La ruta existe pero no es un directorio"
}
else{
    Write-Output "La ruta no existe"
}
