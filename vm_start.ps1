$opc = Write-Host "Que vols fer (Iniciar / Guardar / Aturar)?"
VBoxManage list vms
$maq = Write-Host "Amb quina màquina vols treballar?"
if ($opc -eq "Iniciar"){
    Write-Host "Iniciant la màquina..."
    try {
        VBoxManage startvm $maq
    } catch {
    Write-Host "Ha sorgit un error, comprova que la teva màquina apareix aquí:"
    VBoxManage list vms
    }
}
elsif ($opc -eq "Aturar"){
    try {
    VBoxManage controlvm $maq poweroff
    } catch {
    Write-Host "Ha sorgit un error, comprova que la teva màquina apareix aquí:"
    VBoxManage list runnningvms
}
}
elsif ($opc -eq "Guardar"){
       try {
    VBoxManage controlvm $maq savestate
    } catch {
    Write-Host "Ha sorgit un error, comprova que la teva màquina apareix aquí:"
    VBoxManage list runnningvms 
}
else {
    Write-Host "Has introduït una opció no vàlida"   
}
}