#Script per fer la practica 6
$empresa="C:\Empresa_users\"
clear-host

#comprovem si existem la carpeta Empresa
if ( Test-Path -Path $empresa ){
    Remove-Item -Recurse $empresa -Force
    Remove-SmbShare -Name Empresa_Users$ -Force
}

#creem la carpeta empresa i la compartim
New-Item -Path $empresa -ItemType Container
New-SmbShare -Path $empresa -Name "Empresa_Users$" -Change "Usuarios del dominio"
$acl = get-acl -Path "$empresa"
$acl.SetAccessRuleProtection($true, $false)

#Creem la subestructura, compartim les carpetes i donem els permisos que calen als arxius compartits
$empleats = Import-Csv C:\Users\Administrador\Desktop\empleados.csv -Delimiter ";" 
foreach ($emp in $empleats){
    #Remove-SmbShare -Name $($dep.departamento) -Force
    New-Item -Path "$empresa$($emp.nombre).$($emp.apellido)" -ItemType Container
    #New-SmbShare -Path $empresa$($emp.nombre).$($emp.nombre) -Name "$($emp.nombre).$($emp.nombre)" -FullAccess "Usuarios del dominio"
    #Revoke-SmbShareAccess -Name $($dep.departamento) -AccountName todos -Force
  
    $acl = get-acl -Path "$empresa$($emp.nombre).$($emp.apellido)"
    $acl.SetAccessRuleProtection($true, $false)

    $permiso= 'Administradores', 'FullControl', 'ContainerInherit,ObjectInherit', 'None', 'Allow'
    $ace= New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permiso
    $acl.SetAccessRule($ace)
    #ace | Format-Table

    $permiso= "$($emp.nombre).$($emp.apellido)", 'FullControl', 'ContainerInherit,ObjectInherit', 'None', 'Allow'
    $ace= New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permiso
    $acl.SetAccessRule($ace)
    #ace | Format-Table

    #$comp = Read-Host "Introduce yes si quieres poner esos permisos"
    #if ( $comp -eq "yes" ){
        $acl | Set-Acl -Path "$empresa$($emp.nombre).$($emp.apellido)"
    #}
    
    Set-ADUser -Identity "$($emp.nombre).$($emp.apellido)" -ScriptPath "carpetas$($emp.departamento).bat" -HomeDrive "Z:" -HomeDirectory "\\server\Empresa_users$\$($emp.nombre).$($emp.apellido)"


}