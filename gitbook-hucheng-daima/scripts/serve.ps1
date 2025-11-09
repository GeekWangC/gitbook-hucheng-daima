param(
  [int]$Port = 4000
)
$ErrorActionPreference = 'Stop'
function Check-Node {
  try { $v = node -v } catch { Write-Error 'Node.js 未安装。请先安装 Node 20/22（推荐 22 LTS）。'; exit 1 }
  if ($v -notmatch '^v(2[02])\.') { Write-Warning "检测到 Node $v，HonKit 推荐 Node 20.18+ 或 22 LTS" }
}
Set-Location (Split-Path -Parent $MyInvocation.MyCommand.Path) | Out-Null
Set-Location ..
Check-Node
Write-Host "启动本地预览：http://localhost:$Port"
npx --yes honkit serve --port $Port
