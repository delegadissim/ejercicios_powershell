#Programa que te diga el grupo
clear-host

$sexe = Read-Host "Escribe tu sexo"
$nom = Read-Host "Escribe tu Nombre"
 
if ( $sexe -eq "Mujer"  -and  $nom -match '^[a-m].*' ){
    Write-Output "Perteneces al grupo A"
}elseif ( $sexe -eq "Hombre"  -and  $nom -match '^[n-z].*' ){
    Write-Output "Perteneces al grupo A"
}else{
    Write-Output "Perteneces al grupo B"
}