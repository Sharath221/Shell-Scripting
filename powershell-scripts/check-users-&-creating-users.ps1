$password = "India@123456"
$secpass = ConvertTo-SecureString -AsPlainText $password -Force
$existinguser = Get-ADUser -Filter *
$users = "Anand","Bala","Chitra"
foreach ($user in $users)
{
    if ($existinguser -contains $user){
    Write-Output "User already exist $user"
    else
    Write-Output "User Creating $user"
    New-ADUser -Name $user -AccountPassword $secpass -ChangePassAtLogon $true
    }
}
Get-AdUser -Filter * | select Name