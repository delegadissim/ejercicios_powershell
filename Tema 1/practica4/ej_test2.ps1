#piramide
Clear-Host

[int]$nombre = Read-Host "Quina altura vols al triangle?"

for ( $i=1; $i -le $nombre; $i++ ){    for ( $j=1;$j -le $i; $j++ ){        write-host -NoNewline "-"    }    Write-Host -NoNewline "*`n"}