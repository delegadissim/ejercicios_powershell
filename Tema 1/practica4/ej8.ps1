#piramide amb nombres
Clear-Host

[int]$nombre = Read-Host "Quina altura vols al triangle?"

for ( $i=1; $i -le $nombre; $i++ ){    Write-Host ""    $escriure=$i*2-1    for ( $j=1;$j -le $i; $j++ ){        write-host -NoNewline "$escriure "        $escriure -=2    }}