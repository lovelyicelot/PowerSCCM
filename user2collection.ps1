$mails = Get-Content c:\temp\userlist.txt
$domain = "apac\"

foreach ($mail in $mails)
{
    $SamAccountName = (get-aduser -Filter 'EmailAddress -eq "$mail"').SamAccountName
    $Name = (get-aduser -Filter 'EmailAddress -eq $mail').Name 
    $CMname = $domain + $SamAccountName + " " + "(" + $Name + ")"
    


}