$nom = Read-Host "Digues el nom de la teva MV"
$os = Read-Host "Digues quin SO farás servir (Windows10/Linux26)"
$num = 1
if ($os -eq "Windows10" -OR $os -eq "Linux26") {
    VBoxManage createvm --name $nom --ostype $os --register
    VBoxManage modifyvm $nom --nic1 nat
    VBoxManage modifyvm $nom --nictype1 virtio
    VBoxManage modifyvm $nom --natnet1 default
    while ($num -ne 8){
        $num = $num + 1
        VBoxManage modifyvm $nom --nic$num intnet
        VBoxManage modifyvm $nom --nictype$num virtio
        VBoxManage modifyvm $nom --intnet$num intnet 
    } 
}
else {
    Write-Host "No has introduit un SO vàlid."
}