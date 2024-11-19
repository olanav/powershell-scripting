$res = Test-NetConnection -ComputerName 8.8.8.8 -port 53 -InformationLevel Quiet
if ($res -eq $True){
     [System.Windows.MessageBox]::Show("Connexió TCP correcte", "Connexió TCP", "OK")
}
else {
     [System.Windows.MessageBox]::Show("Connexió TCP incorrecte", "Connexió TCP", "OK")
}
