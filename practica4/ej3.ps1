#Compte enrrere des de X
Clear-Host

[int]$nombre=Read-Host "Introduce el numero"

for ($i = $nombre; $i -gt 0; $i--)
{
    Write-Host -nonewline "$i,"
}
Write-Host -NoNewline 0