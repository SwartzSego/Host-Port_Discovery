$ip="192.168.1."
for($i= 0; $i -lt 255;$i++){

    $ipadd=$ip+$i
    $sum="ping -n 1"+" "+$ipadd
    $result=iex($sum)

                if($result -like "*unreachable*"){
                Write-Host "{$ipadd} Host Is Unreachable"
            }
            else{
                Write-Host "{$ipadd} Host Is Reachable"
            }


}