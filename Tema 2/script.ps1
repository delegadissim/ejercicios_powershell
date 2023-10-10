#Crear estructura d''empresa utilitzant Unitats organitzatives
#així com usuaris i grups
clear-host

#Per a borrar els anteriors (per si hem fet proves o qualsevol cosa)
Remove-ADOrganizationalUnit -Identity "OU=Empresa,DC=EMPRESA,DC=LOCAL" -Recursive -Confirm:$false
Read-Host "`n`nLos archivos:`n`n`t-departamentos.csv`n`t-empleados.csv`n`nEstan en el escritorio del usuario Administrador?`n (Si no lo estan ponlos)`n`nUna vez esten presiona enter para continuar"



#Creem l'unitat organitzativa "Empresa"
New-ADOrganizationalUnit -Name "Empresa" -Path "DC=EMPRESA,DC=LOCAL" -Description "Unidad Empresa" -ProtectedFromAccidentalDeletion $false


#Generem els departaments com a subUnitats organitzatives d'empresa i creem els grups de cada departament
$departament = Import-Csv C:\Users\Administrador\Desktop\departamentos.csv -Delimiter ";"

foreach ($dep in $departament)
{
    New-ADOrganizationalUnit -Name $($dep.departamento) -Path "OU=Empresa,DC=EMPRESA,DC=LOCAL" -Description $($dep.descripcion) -ProtectedFromAccidentalDeletion $false
    New-ADGroup -Name $($dep.departamento) -GroupCategory Security -GroupScope Global -Path "OU=$($dep.departamento),OU=Empresa,DC=EMPRESA,DC=LOCAL"
}

#Generem els empleats, i els assignem el seu grup corresponent
$usuaris= Import-Csv C:\Users\Administrador\Desktop\empleados.csv -Delimiter ";"

foreach ($usu in $usuaris)
{
    New-ADUser -Name $($usu.nombre) -Path "OU=$($usu.Departamento),OU=Empresa,DC=Empresa,DC=Local" -SamAccountName "$($usu.nombre).$($usu.apellido)" -UserPrincipalName "$($usu.nombre).$($usu.apellido)@empresa.local" -AccountPassword (ConvertTo-SecureString "aso2021." -AsPlainText -Force) -GivenName "$($usu.nombre)" -Surname "$($usu.apellido)" -ChangePasswordAtLogon $true -Enabled $true
    Add-ADGroupMember -Identity "$($usu.departamento)" -Members "$($usu.nombre).$($usu.apellido)"
}



