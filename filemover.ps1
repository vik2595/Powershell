$files = (gci "C:\Users\acct\Dropbox\ORDER PROCESSING\TO BE PUSHED OUT - Donny\Adam please drop these into client files\Move\*" -include ("*.doc","*.pdf","*.xlsx","*.xls","*.docx"))
$Dfolder = "C:\Users\acct\Dropbox\client files\"
foreach($File in $files)
    { 
    $dest = $File.name.split('[ ]')[3] + ", " + $File.name.split('[ ]')[2] 
    New-Item -Path $Dfolder -Name $dest -ItemType "directory"
    Move-Item -Path "$File" -Destination "$Dfolder\$Dest";
    }