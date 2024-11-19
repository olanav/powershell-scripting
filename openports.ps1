$opc = Read-Host "Quins ports vols veure: TCP (T), UDP (U) o els dos (D)?"
if ($opc -eq "T") {
    Write-Host "Aquí tens una llista dels ports TCP oberts:"
    netstat -an | Where-Object {$_ -match "TCP"}
}
elseif ($opc -eq "U") {
    Write-Host "Aquí tens una llista dels ports UDP oberts:"
    netstat -an | Where-Object {$_ -match "UDP"}
}
elseif ($opc -eq "D") {
    Write-Host "Aquí tens una llista dels ports oberts:"
    netstat -an
}
else {
    Write-Host "Has introduit una opció no vàlida."
}
