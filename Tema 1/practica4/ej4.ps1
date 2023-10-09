#numero impares hasta numero dado por el usuario
Clear-Host

[int]$nombre = Read-Host "Introduce un numero entero y positivo"

for ($i=1; $i -le $nombre; $i += 2)
{
    if ($i -eq $nombre -or $i -eq $nombre-1){
        write-host -NoNewline "$i"
    }else{
        write-host -NoNewline "$i, "
    }
    
}