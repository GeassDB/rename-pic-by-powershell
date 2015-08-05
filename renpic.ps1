$i = 0
$file = "main,jpg"
$x = Split-Path -Parent $MyInvocation.MyCommand.Definition
#Dir $x -recurse -filter *.jpg  |
Get-ChildItem -Path $x -Filter *.jpg |

ForEach-Object { 
$extension = $_.Extension
$newName = '{0:d6}{1}' -f $i, $extension
$i++
if($_.Name -ne "main.jpg"){
Rename-Item -Path $_.FullName -NewName $newName
}
}