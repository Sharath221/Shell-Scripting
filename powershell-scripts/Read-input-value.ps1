$num = Read-Host "Enter a number: "
if ($num -eq 0){
    Write-Output " Please enter above zero value."
}
elseif ($num -gt 0 -and $num -lt 50){
    Write-Output " You have above 0 and below 50 "
}
else {
    Write-Output " Your Are more then 50"
}