#for con tabla de multiplicar
Clear-Host

[int]$nombre = Read-Host "De que numero quieres ver la tabla de multiplicar?"

for ($i=1; $i -le 10; $i++)
{
    Write-Host "$i X $nombre = $($i*$nombre)"
}