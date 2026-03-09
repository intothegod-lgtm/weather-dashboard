$ErrorActionPreference = "Stop"

$repoRoot = Split-Path -Parent $MyInvocation.MyCommand.Path
Set-Location $repoRoot

Write-Host "Generating dashboard files..." -ForegroundColor Cyan
python weather_bot.py

Write-Host "Checking Git status..." -ForegroundColor Cyan
$status = git status --short
if (-not $status) {
    Write-Host "No changes to commit." -ForegroundColor Yellow
    exit 0
}

Write-Host $status

$defaultMessage = "Update dashboard"
$message = Read-Host "Commit message [$defaultMessage]"
if ([string]::IsNullOrWhiteSpace($message)) {
    $message = $defaultMessage
}

Write-Host "Staging files..." -ForegroundColor Cyan
git add weather_bot.py index.html weather_report.html README.md .gitignore publish.ps1

Write-Host "Creating commit..." -ForegroundColor Cyan
git commit -m $message

Write-Host "Pushing to GitHub..." -ForegroundColor Cyan
git push

Write-Host ""
Write-Host "Published:" -ForegroundColor Green
Write-Host "https://intothegod-lgtm.github.io/weather-dashboard/"
