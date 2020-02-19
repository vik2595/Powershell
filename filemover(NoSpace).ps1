#Test
#$files = (gci "C:\Users\acct\Desktop\Vikas Data\Test\*" -include ("*.doc","*.jpg","*.pdf","*.xlsx","*.xls","*.docx"))
#$Dfolder = "C:\Users\acct\Desktop\Vikas Data\Test\client files\"


#Real
$files = (gci "C:\Users\acct\Dropbox\ORDER PROCESSING\TO BE PUSHED OUT - Donny\Adam please drop these into client files\Move\*" -include ("*.doc","*.jpg","*.pdf","*.xlsx","*.xls","*.docx"))
$Dfolder = "C:\Users\acct\Dropbox\client files\"


foreach($File in $files)
    { 
    $dest = $File.name.split('[ ]')[2] + ", " + $File.name.split('[ ]')[1] 
    New-Item -Path $Dfolder -Name $dest -ItemType "directory"
    Move-Item -Path "$File" -Destination "$Dfolder\$Dest";
    }