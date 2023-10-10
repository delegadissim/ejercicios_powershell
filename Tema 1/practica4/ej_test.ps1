#exercici 7.5
Clear-Host


[int]$nombre = Read-Host "Quina altura vols al triangle?"

for ( $i=1; $i -le $nombre; $i++ ){    Write-Host ""    for ( $j=$i;$j -ge 1; $j-- ){        write-host -NoNewline "$j "    }}