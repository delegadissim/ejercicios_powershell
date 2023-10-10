#Fer les operacións donats dos números.

[int]$num1 = Read-Host "Escribe tu numero"
[int]$num2 = Read-Host "Escribe tu numero"
$resultat = $num1 + $num2
Write-Output "La suma de los dos numeros es: $resultat"

$resultat = $num1 - $num2
Write-Output "La resta de los dos numeros es: $resultat"

$resultat = $num1 * $num2
Write-Output "La multiplicación de los dos numeros es: $resultat"

$resultat = $num1 / $num2
Write-Output "La división de los dos numeros es: $resultat"

$resultat = $num1 % $num2
Write-Output "El mod de los dos numeros es: $resultat"