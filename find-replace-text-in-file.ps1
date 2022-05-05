# Use in powershell
# Purpose: Find some text in a file and replace it. Save the file when done. Well that's the easy non-technical explaination.

$filePath = "$env:USERPROFILE\Downloads\input.txt"
$tempFilePath = "$env:TEMP\$($filePath | Split-Path -Leaf)"
$find = 'badword'
$replace = 'goodword'

(Get-Content -Path $filePath) -replace $find, $replace | Add-Content -Path $tempFilePath

Remove-Item -Path $filePath
Move-Item -Path $tempFilePath -Destination $filePath
