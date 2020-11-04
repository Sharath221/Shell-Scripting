$name = int(Read-Host "Enter the Name")
Write-Output $name.GetType().Name
$vd = $name.GetType().Name
$vs = "String"
Write-Output $vd
if ($name -eq "") {
    Write-Output "Give a valid input..!"
}
elseif ("$vd -match $vs") {

    Write-Output " Valid Stiring Tq"
     
}
else {
    Write-Output "Not Valid String"
}