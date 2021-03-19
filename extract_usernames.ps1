# import csv
$users = Import-Csv -Path "users.csv"

# create empty array
$updated_users = @()

# loop through $users array and remove "domain\" from each username
foreach ($user in $users) {
    $user = $user.user
    $user = $user.split("\")
    $user = $user[1]
    $updated_users += $user
}

# output results
Write-Host("`nupdated usernames")
$updated_users

# output results to csv
$updated_users | Out-File updated_usernames.csv
Write-Host("`n'updated_usernames.csv' was exported successfuly")
