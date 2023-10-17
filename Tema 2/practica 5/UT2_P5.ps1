#Script per fer la practica 3
$empresa="C:\Empresa\"
clear-host

#comprovem si existem la carpeta Empresa
if ( Test-Path -Path $empresa ){
    Remove-Item -Recurse $empresa -Force
    # Remove-SmbShare -Name Empresa -Force
}

#creem la carpeta empresa i la compartim
New-Item -Path $empresa -ItemType Container



#Creem la subestructura, compartim les carpetes i donem els permisos que calen als arxius compartits
$departaments = Import-Csv C:\Users\Administrador\Desktop\departamentos.csv -Delimiter ";" 
foreach ($dep in $departaments){
    Remove-SmbShare -Name $($dep.departamento) -Force
    New-Item -Path "$empresa$($dep.departamento)" -ItemType Container
    New-SmbShare -Path $empresa$($dep.departamento) -Name $($dep.departamento) -FullAccess Administradores -ChangeAccess $($dep.departamento) -ReadAccess "Usuarios del dominio"
    #Grant-SmbShareAccess -Name $($dep.departamento) -AccountName $($dep.departamento) -AccessRight Change -Force
    #Grant-SmbShareAccess -Name $($dep.departamento) -AccountName Administradores -AccessRight Full -Force
    #Grant-SmbShareAccess -Name $($dep.departamento) -AccountName "Usuarios del dominio" -AccessRight Read -Force
    Revoke-SmbShareAccess -Name $($dep.departamento) -AccountName todos -Force
}