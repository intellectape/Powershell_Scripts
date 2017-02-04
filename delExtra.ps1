function delExtra()
{
    Get-Childitem $Env:temp | Remove-Item -Recurse -Force
    
    $Recycler = (New-Object -ComObject Shell.Application).NameSpace(0xa)
    $Recycler.items() | foreach { rm $_.path -force -recurse }
}
