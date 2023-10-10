#Joc d'adivinar el nombre
Clear-Host

$nombre=$(Get-Random) % 100
$cont=0
while ($true){
    $cont++
    $intent = read-host "Introdueiex el número que penses que es"
    if ($nombre -lt $intent){
        Write-Host "El nombre es MENOR"
    }ElseIf ($nombre -gt $intent){
        Write-Host "El nombre es MAJOR"
    }else{
        break
    }
}
Write-Output "`n`n`nHAS GUANYAT"
Write-Output "Ho has intentat $cont vegades"