Invoke-Expression (&starship.exe init powershell)
Invoke-Expression (& { (zoxide.exe init powershell | Out-String) })

# Network Proxy Switcher
function Set-Proxy {
    param (
        [string]$HostIp = "127.0.0.1",
        [int]$Port = 7897 # Clash Verge
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
Set-Alias open  explorer.exe
Set-Alias which where.exe
Set-Alias edit  notepad.exe
Set-Alias new   ni
Set-Alias n     ni
Set-Alias touch ni
Set-Alias grep  findstr

# app
Remove-Alias cd -Scope Local    #This for zoxide
Set-Alias cd    __zoxide_z
Set-Alias s     sudo
Set-Alias vim   nvim.exe    # modify this if you preffer vim
Set-Alias .net  dotnet.exe
Set-Alias dk    docker.exe
Set-Alias pn    pnpm
Set-Alias py    python

# cd to home dir when launch powsershell by some apps without Specified Location.
if ( (Get-Location).Path -match "\Windows\System32|MyDockFinder" ) { Set-Location $HOME }
