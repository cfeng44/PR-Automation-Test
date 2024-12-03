$path = "redback-cyber/.github/workflows/data/PR_Preferences.json"
$this_repo = ${{ github.repository}}
$review_team = @()

$preferences = Get-Content -Raw $path | ConvertFrom-Json -AsHashtable

foreach ($team_member in $preferences.Keys) 
{
if ($preferences[$key] -eq $this_repo) 
{
    $review_team += $preferences[$key]
}
}