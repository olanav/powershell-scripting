function localitzar{
    param (
        $ruta,
        $fitx
    )

    $res = Get-Childitem -Path $ruta | Where-Object Name -eq $fitx
    if ($res -eq $null) {
        Write-Host "El fitxer que estàs buscant no es trova a la ruta indicada."
    }
    else {
        Write-Host "El fitxer" $fitx "existeix a la ruta" $ruta"."
    }
}