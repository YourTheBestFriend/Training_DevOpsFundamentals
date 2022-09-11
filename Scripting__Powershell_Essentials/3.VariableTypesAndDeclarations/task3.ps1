# Check Type Object - for example $str = "my str" ; Get-Member -InputObject $str
# [bool]$signal = $false ; $signal.ToString() ; $signal.GetType() # Not work ($signal won't become type - string)
# Task 
[string]$str = 19790525 ; $str.GetType()            # Create string variable with 19790525 value in it.  ||| type - [string] base type System.Object
$HOME.GetType()                                     # List user’s home directory file path and get datatype for it. ||| type - [string] base type System.Object
(Get-Item $HOME\testFileForPWSH).GetType()          # List some single file in user’s home directory and get datatype for it. ||| type - [FileInfo] base type [System.IO.FileSystemInfo]
(Get-Item $HOME\Downloads).GetType()                # List some single directory in user’s home directory and get datatype for it. ||| type - [DirectoryInfo] base type [ System.IO.FileSystemInfo]