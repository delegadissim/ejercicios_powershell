#MOSTRAR Menu i decidir q fer
Clear-Host
$opcio = "a"
while ($opcio -ne "x"){
    $opcio=read-host "


a) Crear una carpeta

b) Crear un fichero nuevo

c) Cambiar el nombre de un fichero o carpeta

d) Borrar un archivo o carpeta

e) Verificar si existe un fichero o carpeta

f) Mostrar el contenido de un directorio.

g) Mostar la fecha y hora actuales

x) Salir
"

    switch ($opcio){
        {$_ -eq "a"}{
            $path = Read-Host "Introduce el path a la carpeta que quieres crear"
            New-Item $path -ItemType Container
            read-host "`n`nPresiona cualquier tecla para continuar"
            clear-host
            }
        {$_ -eq "b"}{
            $path = Read-Host "Introduce el path al fichero que quieres crear"
            New-Item $path -ItemType File
            read-host "`n`nPresiona enter para continuar"
            clear-host
            }
        {$_ -eq "c"}{
            $path = Read-Host "Introduce el path al fichero que quieres cambiar el nombre"
            $new_name = read-host "Introduce el nuevo nombre"
            rename-item -Path $path -newname $nombre
            get-child -path $path
        }

        {$_ -eq "d"}{
        echo "cambiar nombre"
        }

        {$_ -eq "e"}{
        echo "cambiar nombre"
        }

        {$_ -eq "f"}{
        echo "cambiar nombre"
        }

        {$_ -eq "g"}{
        echo "cambiar nombre"
        }
    }
}