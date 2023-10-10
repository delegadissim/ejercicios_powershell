#Comparar contrasenya
clear-host

$contrasenya = "hola01"

do{
    $posible_con = Read-Host "Escribe la contraseña"
    if ( $contrasenya -eq $posible_con){
        Write-Host "La contraseña es correcta"
    }else{
        Write-Output "La contraseña es incorrecta"
    }
}while($posible_con -ne $contrasenya)
