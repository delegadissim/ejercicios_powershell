#demanar contrasenya
Clear-Host

$contra="contraseña"
while ($true){
    $intent = Read-Host "Introdueix la contrasenya"
    if ($intent -eq $contra){
        break
    }
}
write-host "se acabo"