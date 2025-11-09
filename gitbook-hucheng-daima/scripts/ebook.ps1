$ErrorActionPreference = 'Stop'
param(
  [string]$OutDir = 'dist',
  [string]$Base = '.'
)

function Require-Node {
  try { $v = node -v } catch { Write-Error 'Node.js 未安装。建议使用 Node 20/22。'; exit 1 }
}

function Require-EbookConvert {
  if (-not (Get-Command ebook-convert -ErrorAction SilentlyContinue)) {
    Write-Warning '未检测到 ebook-convert（Calibre）。请先安装 Calibre： https://calibre-ebook.com/download'
    Write-Warning '安装完成后，确保 ebook-convert 在 PATH 中，再次运行本脚本。'
    exit 1
  }
}

Require-Node
Require-EbookConvert

if (-not (Get-Command honkit -ErrorAction SilentlyContinue)) {
  Write-Host '安装 HonKit...'
  npm i -g honkit | Out-Null
}

Set-Location (Split-Path -Parent $MyInvocation.MyCommand.Path) | Out-Null
Set-Location ..

if (-not (Test-Path $OutDir)) { New-Item -ItemType Directory -Path $OutDir | Out-Null }

# 如果存在 cover.svg 而不存在 cover.png，尝试转换
if ((Test-Path 'cover.svg') -and -not (Test-Path 'cover.png')) {
  if (Get-Command rsvg-convert -ErrorAction SilentlyContinue) {
    Write-Host '检测到 cover.svg，使用 rsvg-convert 生成 cover.png...'
    rsvg-convert -w 1600 -h 2560 'cover.svg' -o 'cover.png'
  } else {
    Write-Warning '未检测到 rsvg-convert，跳过封面转换（建议安装 librsvg 或手工提供 cover.png）'
  }
}

Write-Host '生成 EPUB...'
honkit epub $Base "$OutDir/hucheng-daima.epub"

Write-Host '生成 PDF...'
honkit pdf $Base "$OutDir/hucheng-daima.pdf"

Write-Host "完成。输出目录：$(Resolve-Path $OutDir)"
