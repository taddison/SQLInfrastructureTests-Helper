$repoName = "SQLInfrastructureTests"
$repoUri = "https://github.com/taddison/$repoName.git"

if(!(Test-Path -path "../$repoName")) {
    git clone $repoUri "../$repoName"
} else {
    Set-Location -Path "../$repoName"
    git pull
}