#Lectura de dades d'un arxiu.
Clear-Host

$usuari = Import-Csv z:\practica5\usuarios.csv -Delimiter ","

foreach ($em in $usuari)
{
 	Write-Host "Nom: $($em.nombre) Cognom: $($em.apellidos) Classe: $($em.grupo)"
}
