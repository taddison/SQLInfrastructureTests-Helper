$servers = @('localhost','.')
$repoName = "SQLInfrastructureTests"

# Run all the tests
Invoke-Pester -Script @{Path="../$repoName";Parameters= @{servers=$servers}}

# Run a single test
Invoke-Pester -Script @{Path="../$repoName";Parameters= @{servers=$servers}} -TestName "*SQL Agent*"