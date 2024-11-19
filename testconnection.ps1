$res = Test-NetConnection -ComputerName 8.8.8.8 -port 53 -InformationLevel Quiet
if ($res -eq $True){
    Write-Host "La connexió és correcta."
}
else {
    Write-Host "La connexió no és correcta."
}
