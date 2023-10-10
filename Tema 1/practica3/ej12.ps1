#Pizzas con switch i if
Clear-Host


$veg = Read-Host "Quieres una pizza vegetariana? [si/no]"
$veg = $veg.ToLower()
if ( $veg -eq "si" ){
    $opcion = read-Host "Las pizzas vegetarianas tienen una base de 
mozzarella + tomate y un ingrediente a elegir entre:

        1. Pimiento
        2. Tofu

Escribe 1 para pimiento o 2 para tofu"
    if ( $opcion -eq 1 ){
        Write-Host "`n`nHas escogido una pizza VEGETARIANA
con Tomate, mozzarella y pimiento"
    }else{
        Write-Host "`n`nHas escogido una pizza VEGETARIANA
con Tomate, mozzarella y tofu"
    }
}else{
    $opcion = read-Host "Las pizzas no vegetarianas tienen una base de 
mozzarella + tomate y un ingrediente a elegir entre:

        1. Peperoni
        2. Jamón
        3. Salmon

Escribe 1 para pimiento o 2 para tofu"
    switch ($opcion){
        {$opcion -eq 1} {Write-Output "`n`nHas escogido una pizza NO VEGETARIANA
        con Tomate, mozzarella y peperoni"}
        {$opcion -eq 2} {Write-Output "`n`nHas escogido una pizza NO VEGETARIANA
con Tomate, mozzarella y jamón"}
        {$opcion -eq 3} {Write-Output "`n`nHas escogido una pizza NO VEGETARIANA
        con Tomate, mozzarella y salmon"}
        default {Write-Host "Opción mal puesta"}
    }
}