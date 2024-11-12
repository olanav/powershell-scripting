function calcu{
    param (
        [int]$num1,
        [int]$num2,
        [string]$op
    )
        if ($op -eq "+") {
            $res = $num1 + $num2
        }
        elseif ($op -eq "-") {
            $res = $num1 - $num2
        }
        elseif ($op -eq "*" ){
            $res = $num1 * $num2
        }
        elseif ($op -eq "/" ){
            if ($num2 -eq 0) {
                Write-Host "No es pot dividir entre zero"
                continue
            }
            else {
                $res = $num1 / $num2
            }
        }
        else {
        Write-Host "No has introduit una opció vàlida"
        continue
        }
        Write-Host "El resultat és:"$res
    }