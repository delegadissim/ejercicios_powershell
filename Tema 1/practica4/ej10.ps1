#MOSTRAR Menu i decidir q fer
Clear-Host
$opcio = "a"
while ($opcio -ne "x"){
    $opcio=read-host "

*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*

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
            Rename-Item -Path $path -newname $new_name
            read-host "`n`nPresiona enter para continuar"
            clear-host
        }

        {$_ -eq "d"}{
            $path = Read-Host "Introduce el path al fichero que borrar"
            del $path
            read-host "`n`nPresiona enter para continuar"
            clear-host
        }

        {$_ -eq "e"}{
            $archivo = Read-Host "Introduce el path al fichero que quieres comprobar si existe o no"
            if (Test-Path $archivo) {
                Write-Host "El archivo existe."
            } else {
                Write-Host "El archivo no existe."
            }
            read-host "`n`nPresiona enter para continuar"
            clear-host
        }

        {$_ -eq "f"}{
            $archivo = Read-Host "Introduce el path al directorio que quieres mostrar"
            Get-ChildItem $archivo
            read-host "`n`nPresiona enter para continuar"
            clear-host
        }

        {$_ -eq "g"}{
            write-host "`n`n$(get-date)"
            read-host "`n`nPresiona enter para continuar"
            clear-hos
        }
    }
}