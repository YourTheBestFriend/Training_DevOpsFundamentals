# Task 1
$str1 = "xyaabbbccccdefww"
$str2 = "xxxxyyyyabklmopq"
$str3 = $str1 + $str2

[string[]]$str3 = [string]$str3.ToCharArray()  
$str3 = $str3.Split(' ') | Sort-Object | Get-Unique
[string]$str3 = $str3
$str3 = $str3.Replace(' ', '')
$str3

# Task 2
$inputString = "the-stealth-warrior"
#$inputString = "The_Stealth_Warrior"
[string[]]$s = $inputString -replace '[-.._]', ' '   
$s = $s -split ' '    
$start_str = $s[0]   
[string]$s = $s
$s = $s.Substring($start_str.Length) 
$s = (Get-Culture).TextInfo.ToTitleCase($s)        
$s = $start_str + $s    
$s = $s.Replace(' ', '')  
$s 

<#
-1-------------Video System.String Class
[char[]]$chars = @('M', 'y', ' ', 'n', 'a', 'm', 'e', ' ', 'M', 'a', 't', 'v', 'e', 'y')      
$chars
# Get-Member -InputObject $chars     
$str = [System.String]::new($chars, 0, $chars.Length)  #  $chars.Length - 1 не надо :D
$str

-2-------------Video StringConcatinating
# after -join (separator / delimiter)
"The Return", "the King" -join " of " 
"The Return", "the King" -join $null   
-join @("The Fellowship", " of the Ring")  
[System.String]::Join(" of ", @("The FellowShip", "the Ring"))    
[System.String]::Join($null, @("The FellowShip", "the Ring")) 
"The two" + ' ' + "test"  
[System.String]::Concat("The Two", ' ', "Tower")   

-3-------------Video StringSplitting
"One Two Three" -split ' ' 
"My name Matthew !".Split(' ')   
"The Two Tower".Split( 'T', 2, [System.StringSplitOptions]::RemoveEmptyEntries)  

-4-------------Video Extract, Search, Replace, Operations
"My name Matthew !".Substring(10)   
"My name Matthew !".Substring(4, 3)   
"The Two Tower" -replace "Two","One"  
"The Two Tower" -replace "Two",$null  
"The Two Tower".StartsWith("The")  # True
"The Two Tower".EndsWith("r")      # True
"The Two Tower".EndsWith("R")      # False

-5-------------Video Compare Operation
[System.String]::Compare("King", "king")                # 1
[System.String]::Compare("King", "king", $true)         # 0
[System.String]::Equals("king", "king")                 # True
[System.String]::Equals("king", "King")                 # False

"Test string udu".CompareTo("Test string udu")          # 0
"Test string udu".CompareTo("Test string udu asdfasd")  # -1 
"Test string udu".CompareTo("Test string")              # 1
#>