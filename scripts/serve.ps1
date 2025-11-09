param(
  [int]$Port = 4000
)
$ErrorActionPreference = 'Stop'
function Require-Node14 {
  try { $v = node -v } catch { Write-Error 'Node.js 未安装。请先安装 Node 14（建议 14.21.3）。'; exit 1 }
  if ($v -notmatch '^v14\.') {
    Write-Warning "检测到 Node 版本 $v。gitbook-cli 与 Node 18/20 不兼容，建议使用 Node 14（nvm use 14）。"
  }
}
function Ensure-GitBookCli {
  if (-not (Get-Command gitbook -ErrorAction SilentlyContinue)) {
    Write-Host '未检测到 gitbook-cli，正在全局安装…'
    npm i -g gitbook-cli | Write-Output
  }
}
Set-Location (Split-Path -Parent $MyInvocation.MyCommand.Path) | Out-Null
Set-Location ..
Require-Node14
Ensure-GitBookCli
Write-Host '安装插件（若有）…'
gitbook install | Write-Output
Write-Host "启动本地预览：http://localhost:$Port"
gitbook serve --port $Port
