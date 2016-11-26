#Enable & Disable USB 
#Part of IHACK Scripting Tutorial
#Run It As Administrator 

#Coded By Karem Ali

If (-NOT ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole(

   [Security.Principal.WindowsBuiltInRole] “Administrator”))

{

 Write-Warning “You do not have Administrator rights to run this script!`nPlease re-run this script as an Administrator!”

 Pause
 Break

}


echo " Choose an Option " " 1- Disable USB " " 2- Enable USb "
$A = read-host "Enter"
$Path = "HKLM:\system\CurrentControlSet\Services\USBSTOR"
if ( $A -eq 1 )
{
 if(test-path $Path)
 {
    Set-ItemProperty -path $Path -name start -value 3
 }
}

elseif ( $A -eq 2 )
{
if(test-path $Path)
 {
    Set-ItemProperty -path $path -name start -value 3
 }
}
else 
{
 echo " Choose 1 or 2 "
    pause
}
