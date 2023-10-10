#Fer les operacións donats dos números.

[int]$num1 = Read-Host "Escribe el numero de horas trabajadas"
[int]$num2 = Read-Host "Escribe el salario por hora"
$resultat = $num1 * $num2

Write-Output "Te tenemos que pagar: $resultat€"