$updated_usernames = @()

Import-Csv -Path 'users.csv' | ForEach-Object {
    $updated_username = $_.users.split("\")[1]
    $updated_usernames += $updated_username
}

$updated_usernames | Out-File updated_usernames.csv
Write-Output("`n'updated_usernames.csv' exported successfully")
