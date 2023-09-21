#Calcular beneficios 
Clear-Host
do{
[double]$puntuacion = Read-Host "Escribe tu puntuacion"
}while ((!(0.0, 0.4, 0.6) -contains $puntuacion ) -or !($puntuacion -gt 0.6))


switch ($puntuacion){
    0.0{
        Write-Output "Inaceptable"
    }0.4{
        Write-Output "Aceptable"
    }0.6{
        Write-Output "Meritorio"
    }{$puntuacion-gt 0.6}{
        Write-Output "Mas que meritorio"
    }
}

Write-Output "Cobraras un total de "($puntuacion*2400)