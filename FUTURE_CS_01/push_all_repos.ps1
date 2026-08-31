# Future Interns - Cyber Security Track
# Automates: repo creation + README + LICENSE + report upload + push, for all 3 tasks
# Run this from the folder where you unzipped FUTURE_CS_repo_files.zip

$repos = @("FUTURE_CS_01", "FUTURE_CS_02", "FUTURE_CS_03")

foreach ($repo in $repos) {
    Write-Host "`n=== Processing $repo ===" -ForegroundColor Cyan

    if (-not (Test-Path $repo)) {
        Write-Host "Folder $repo not found — skipping. Make sure you're running this from the unzipped folder." -ForegroundColor Yellow
        continue
    }

    Set-Location $repo

    git init
    git add .
    git commit -m "Add report, README, and MIT License for $repo"

    # Creates the GitHub repo under your account and pushes in one step
    gh repo create $repo --public --source=. --remote=origin --push

    Set-Location ..
}

Write-Host "`nAll done. Check https://github.com/Maruthi666 to confirm all three repos are live." -ForegroundColor Green
