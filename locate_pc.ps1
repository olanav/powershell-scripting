function locate_pc{
    param (
        $fitx
    )
    while ($true){
        $res = Get-Childitem $fitx -Recurse -ErrorAction SilentlyContinue
        $path=$res.DirectoryName
        if ($res -eq $null) {
            Write-Host "El fitxer que estàs buscant no es trova a l'equip."
        }
        else {
            Write-Host "El fitxer $fitx es troba a $path."
        }
        $cont = Read-Host "Vols continuar? (S/N)"
        if ($cont -eq "N") {
           Read-Host "Sortint..."
           break
        }
        elseif ($cont -eq "S") {
            $fitx = Read-Host "Introdueix el nou fitxer a buscar"
            continue
        }
        else {
            Read-Host "Has introduit una opció invàlida"
            continue
        }
    }
}