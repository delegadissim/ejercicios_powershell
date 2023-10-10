#Saber si un numero es mayor o menor q otro
    #version mejorada

do{
    [int] $opcion = Read-Host "`n`n****** CALCULADORA ********

    1. Sumar
    2. Restar
    3. Multiplicar
    4. Dividir
    5. Salir

¿Qué desea hacer? Elige una opción"


    switch ($opcion) {
        1 {
            [int] $nombre1 = Read-Host "Escribe tu primer numero"
            [int] $nombre2 = Read-Host "Escribe tu segundo numero"
            $resultat = $nombre1 + $nombre2
            Write-Output "El resultado de la suma es: $resultat"
        }
        2 {
            [int] $nombre1 = Read-Host "Escribe tu primer numero"
            [int] $nombre2 = Read-Host "Escribe tu segundo numero"
            $resultat = $nombre1 - $nombre2
            Write-Output "El resultado de la resta es: $resultat"
        }
        3 {
            [int] $nombre1 = Read-Host "Escribe tu primer numero"
            [int] $nombre2 = Read-Host "Escribe tu segundo numero"
            $resultat = $nombre1 * $nombre2
            Write-Output "El resultado de la multiplicacion es: $resultat"
        }
        4 {
            [int] $nombre1 = Read-Host "Escribe tu primer numero"
            [int] $nombre2 = Read-Host "Escribe tu segundo numero"
            $resultat = $nombre1 / $nombre2
            Write-Output "El resultado de la division es: $resultat"

        }
        5 {
            Write-Output "`n`n[!] Saliendo....`n`n"
        }
    }
}while ($opcion -ne 5)


