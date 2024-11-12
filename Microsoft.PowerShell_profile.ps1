Invoke-Expression (&starship.exe init powershell)
Invoke-Expression (& { (zoxide.exe init powershell | Out-String) })

# Network Proxy Switcher
function Set-Proxy {
    param (
        [string]$HostIp = "127.0.0.1",
        [int]$Port = 7890
    )
    $env:http_proxy = "http://${HostIp}:$Port"
    $env:https_proxy = "http://${HostIp}:$Port"
    Write-Host "--[ Set Network Proxy! Value: HostIp = $HostIp , Port = $Port ]--"
}
function Remove-Proxy {
    Remove-Item Env:http_proxy -ErrorAction SilentlyContinue
    Remove-Item Env:https_proxy -ErrorAction SilentlyContinue
    Write-Host "--[ Remove Network Proxy! ]--"
}

# Some useful alias
Remove-Alias cd -Scope Local
Set-Alias open  explorer.exe
Set-Alias check where.exe
Set-Alias edit  notepad.exe
Set-Alias new   ni
Set-Alias n     ni
Set-Alias touch ni
Set-Alias grep  findstr

# app
Set-Alias cd    __zoxide_z
Set-Alias s     sudo
Set-Alias v     nvim.exe    # modify this if you preffer vim
Set-Alias .net  dotnet.exe
Set-Alias dk    docker.exe
Set-Alias pn    pnpm

# cd to home dir when launch powsershell by some apps without Specified Location.
if ( (Get-Location).Path -eq "C:\Windows\System32" ) { Set-Location $HOME }