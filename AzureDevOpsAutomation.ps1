# ---------------------------------------------------------
#   File:         Select-Team.ps1
#   Author:       Codey Funston [s222250824@deakin.edu.au]
# 
#   Description:  Based on repository preferences, selects 
#                 a reviewer, or whole team if no matches.
#
# ---------------------------------------------------------

function Select-Reviewer {
    param (
        [Parameter(Mandatory)]
        $path
    )

    $team = @()
    $thisRepo = "${{ github.repository}}"
    $preferences = Get-Content -Raw $path | ConvertFrom-Json -AsHashtable

    foreach ($member in $preferences.Keys) {
        if ($preferences[$member] -eq $thisRepo) {
            $team += $member
        }
    }

    return $team
}

foreach ($x in $reviewTeam){
Write-Host $x
}


# if github.current repo is in user pref: assign to them
# else assign to "all".aa