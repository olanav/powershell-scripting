function copiar{
    param (
        $rutaorigen,
        $rutadesti
    )
    if ((Test-Path $rutaorigen) -And (Test-Path $rutadesti)) {
        Copy-Item $rutaorigen $rutadesti
        Write-Host "La copia s'ha realitzat correctament."
    }
    else {
        Write-Host "Alguna de les rutes introduides no existeixen."
    }
  
}