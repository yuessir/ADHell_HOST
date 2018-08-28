$OutputDead= @();
$OutputLive= @();
$names = Get-content "source.txt"
foreach ($name in $names){
  if (Test-Connection -ComputerName $name -Count 1 -ErrorAction SilentlyContinue){
   $OutputLive+= "$name"
   Write-Host "$Name"
  }
  else{
    $OutputDead+= "$name"
    Write-Host "$Name"
  }
}
$OutputDead | Out-file "C:\Users\KKK\Documents\Code\ADhell_Host\Pingx\deadHost.txt"
$OutputLive | Out-file "C:\Users\KKK\Documents\Code\ADhell_Host\Pingx\liveHost.txt"