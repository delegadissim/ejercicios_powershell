#Utilitzar funcions
clear-host

function suma ( $a, $b ){
    return $( $a + $b )
}

function resta ( $a, $b ){
    return $( $a - $b )
}

function mult ( $a, $b ){
    return $( $a * $b )
}

function div ( $a, $b ){
    return $( $a / $b )
}

function mod ( $a, $b ){
    return $( $a % $b )
}

function menu () {
    Write-Host "
****** CALCULADORA ********

1. Sumar
2. Restar
3. Multiplicar
4. Dividir
5. Salir
"
return read-host "¿Qué desea hacer?Elige una opción"
}




########
##MAIN##
########


$opcion=0
while ( $opcion -ne 5) {
    $opcion = menu
    if ($opcion -ne 5){
        [int]$primer = Read-Host "Introduce el primer numero"
        [int]$segon = Read-Host "Introduce el segon numero"
    }
    switch ($opcion) {
        {$_ -eq 1} {write-host "`n`n"(suma $primer $segon)"`n`n"}
        {$_ -eq 2} {write-host "`n`n"(resta $primer $segon)"`n`n"}
        {$_ -eq 3} {write-host "`n`n"(mult $primer $segon)"`n`n"}
        {$_ -eq 4} {write-host "`n`n"(div $primer $segon)"`n`n"}
    }
}