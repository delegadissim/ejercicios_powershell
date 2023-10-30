$empleats = Import-Csv C:\Users\Administrador\Desktop\empleados.csv -Delimiter ";" 

foreach ($emp in $empleats){
    if ($($emp.departamento) -eq "PERSONAL"){
        Set-ADUser -Identity "$($emp.nombre).$($emp.apellido)" -ProfilePath "\\server\Empresa_users$\$($emp.nombre).$($emp.apellido)"
    }
}