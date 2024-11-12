# My Profile of Powershell on Windows / 我的Powershell配置文件,Windows系统

## Description / 描述

This profile is simple but more productive when work in terminals. I just create a proxy switcher and some command alias.
这个配置文件简单，但是终端操作时会让你很有精神。我目前只作了代理切换和一些命令行缩略别名。

## Configure / 配置

### PreInstalled (Strongly Needed) / 预装的命令行程式 (必须的)

- `Starship` A Prompt for any shell. 支持各种Shell的终端提示优化 <https://github.com/starship/starship>
- `Zoxide` A smarter cd command. 更智能的cd命令 <https://github.com/ajeetdsouza/zoxide>

### Load the Profile / 载入配置

Two Ways for the profile, each one is ok! / 配置有两种方式，哪一种都可以。

1. Just copy the `Microsoft.PowerShell_profile.ps1` file info Powershell Profile Directory! 只需要将配置文件拷贝到Powershell的profile文件夹里。

2. Git clone into Windows Document Directory if not exist profile dir. 如果没有配置文件夹，克隆这个仓库到系统的文档路径下

```powershell
  cd ([System.Environment]::GetFolderPath('MyDocuments'))
  git clone --depth 1 https://github.com/UnVec/WindowsPowershellProfile Powershell          # Powershell 7
  git clone --depth 1 https://github.com/UnVec/WindowsPowershellProfile WindowsPowershell   # if you use old powershell
```

