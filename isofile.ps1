$fitxer = Read-Host "Digues el nom del fixter que vols copiar (dins la ISO)"
$desti = Read-Host "Digues el nom del directori on vols copiar aquest fitxer"

Write-Host "Muntant ISO..."
Mount-DiskImage C:\Users\loriol\Desktop\kali-linux-2024.2-installer-amd64.iso

$res = Get-Childitem -Path E:\ | Where-Object Name -eq $fitxer

if ($res -eq $null) {
    Write-Host "El fitxer que estàs buscant no es trova a la ruta indicada."

}
else {
    Write-Host "El fitxer $fitxer existeix a la ruta ruta."
    Write-Host "Copiant fitxer..."
    Copy-Item -Path E:\$fitxer -Destination $desti
}
Write-Host "Desmuntant ISO..."
Dismount-DiskImage C:\Users\loriol\Desktop\kali-linux-2024.2-installer-amd64.iso
