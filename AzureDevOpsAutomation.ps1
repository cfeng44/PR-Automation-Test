# ---------------------------------------------------------
#   File:         AzureDevOpsAutomation.ps1
#   Author:       Codey Funston [s222250824@deakin.edu.au]
# 
#   Description:  
#
# ---------------------------------------------------------

$path = "actions-testing/test.json"
$thisRepo = "${{ github.repository}}"
$team = @()

$preferences = Get-Content -Raw $path | ConvertFrom-Json -AsHashtable

foreach ($teamMember in $preferences.Keys) 
{
    if ($preferences[$teamMember] -eq $this_repo) 
    {
    $reviewTeam += $teamMember
    }
}


function Select-Team ([ref]$Team) {
    foreach ($member in $preferences.Keys) {
        if ($preferences[$member] -eq $thisRepo) {
            $Team += $member
        }
    }
}

foreach ($x in $reviewTeam){
Write-Host $x
}


# if github.current repo is in user pref: assign to them
# else assign to "all".aa

function Get-Greeting {
param (
[string]$Name
)
Write-Output "Hello, $Name!"
}

# Calling the function
Get-Greeting -Name "Alice"