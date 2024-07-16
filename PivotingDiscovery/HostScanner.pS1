#SERGEN CAN
Class Sergenhost{
    [string]$ip_addr
    [string]$ip_addr_base="192.168.1."

    Sergenhost([string]$ip_addr){
    $this.ip_addr=$ip_addr

    }

    [void] tarama(){
        $i=0
        for($i -eq 0;$i -le $this.ip_addr;$i++){
            $ip=$this.ip_addr_base+$i 	 
            $current="ping -n 1"+" "+$ip
            $result=Invoke-Expression($current)
            
            if($result -like "*unreachable*"){
                Write-Host "{$ip} Host Is Unreachable"
            }
            else{
                Write-Host "{$ip} Host Is Reachable"
            }
            
        
        }

    
    
    }


}
$distance = Read-Host "Bitis Noktasi Giriniz:"
$newobj = [Sergenhost]::new($distance)
$newobj.tarama()