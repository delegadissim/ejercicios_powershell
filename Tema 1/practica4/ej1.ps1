#Escriure el nom de l'usuari i vegades
clear-host

[int]$nombre = read-host "Introduce un nombre entero"
$nom=read-host "Introduce tu nombre"

for ($i = 1; $a -le $nombre; $i++)
{
    write-host $nom
}