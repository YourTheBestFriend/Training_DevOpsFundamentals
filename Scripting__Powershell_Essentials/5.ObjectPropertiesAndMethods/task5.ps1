# 1.  Write a PowerShell class to implement pow(x, n) that is returns the base to the exponent power (baseexponent).
<##########################################>
class calculateObj {
    [int]Pow( [int]$x, [int]$y ) {
        return [Math]::Pow($x, $y)
    }
}
<##########################################>

# 2.  Write a PowerShell class which has two methods SetString() and PrintString(). SetString() accept a string from the user and PrintString() print the string in upper case.
<##########################################>
class stringObj {
   # Variable
    [string]$my_str
   # Set
   [void]SetString( [string]$str ) {
        $this.my_str = $str.ToUpper()
   }
   # Get 
   [string]GetString() {
        return $this.my_str
   }
}
<##########################################>

# 3. Write a PowerShell class to reverse a string word by word.
<##########################################>
class reversObj {
   [string]Reverse( [string]$str ) {
        return $str[-1..-$str.Length] -join ''
}
}
<##########################################>

# Example 
class Dice {
    [int]$Max # = 1
    [int]$Min # = 6

    # Constructor
    Dice () {
        $this.Max = 6;
        $this.Min = 0;
    }
    # Constructor with parametrs
    Dice ( [int]$max, [int]$min ) {
        $this.Max = $max
        $this.Min = $min
    }
    # Method
    [int]Roll() {
        return Get-Random -Minimum $this.Min -Maximum $this.Max
    } 
}
<#
Video Class Declaration:
. .\task5.ps1                                                                                                                                                                                             
  17 $dice_ = New-Object Dice                                                                                                                                                                                  
  18 $dice_                                                                                                                                                                                                    
  19 $dice_.Max                                                                                                                                                                                                
  20 $dice_.Max = 6                                                                                                                                                                                            
  21 $dice_                                                                                                                                                                                                    
  22 . .\task5.ps1                                                                                                                                                                                             
  23 ls                                                                                                                                                                                                        
  24 $dice_ = New-Object Dice                                                                                                                                                                                  
  25 $dice_                                                                                                                                                                                                    
  26 $dice_.Max = 6                                                                                                                                                                                            
  27 $dice_.Min = 1                                                                                                                                                                                            
  28 $dice_                                                                                                                                                                                                    
  29 $dice_.Roll()                                                                                                                                                                                             
  30 $dice_.Roll()                                                                                                                                                                                             
  31 $dice_.Roll()                                                                                                                                                                                             
  32 $dice_.Roll()                                                                                                                                                                                             
  33 $dice_.Roll()                                                                                                                                                                                             
  34 $dice_.Roll()                                                                                                                                                                                             
  35 Remove-Variable $dice_                                                                                                                                                                                    
  36 $dice_ = New-Object Dice                                                                                                                                                                                  
  37 $dice_ = New-Object Dice                                                                                                                                                                                  
  38 Remove-Variable -Name $dice_                                                                                                                                                                              
  39 Remove-Variable -Name $dice                                                                                                                                                                               
  40 Remove-Variable -Name $dice_                                                                                                                                                                              
  41 . .\task5.ps1                                                                                                                                                                                             
  42 Remove-Variable -Name $dice_                                                                                                                                                                              
  43 $dice_                                                                                                                                                                                                    
  44 Remove-Variable -Name $dice_                                                                                                                                                                              
  45 $dice_.Max = 6                                                                                                                                                                                            
  46 $dice_.Min = -6                                                                                                                                                                                           
  47 $dice_.Roll()                                                                                                                                                                                             
  48 $dice_.Roll()                                                                                                                                                                                             
  49 $dice_.Roll()                                                                                                                                                                                             
  50 $dice_.Roll()                                                                                                                                                                                             
  51 $dice_.Roll()                                                                                                                                                                                             
  52 $dice_.Roll()                                                                                                                                                                                             
  53 $dice_.Roll()                                                                                                                                                                                             
  54 $dice_.Roll()                                                                                                                                                                                             
  55 . .\task5.ps1                                                                                                                                                                                             
  56 Remove-Variable -Name $dice_                                                                                                                                                                              
  57 Remove-Variable $dice_                                                                                                                                                                                    
  58 Remove-Variable $dice_.Dice                                                                                                                                                                               
  59 $dice_.Roll()                                                                                                                                                                                             
  60 $dice_.Roll()                                                                                                                                                                                             
  61 $dice_.Roll()                                                                                                                                                                                             
  62 $dice_.Roll()                                                                                                                                                                                             
  63 $dice_.Roll()                                                                                                                                                                                             
  64 $dice_.Roll()                                                                                                                                                                                             
  65 $dice_.Roll()                                                                                                                                                                                             
  66 $dice_                                                                                                                                                                                                    
  67 . .\task5.ps1                                                                                                                                                                                             
  68 $dice_ = New-Object Dice                                                                                                                                                                                  
  69 $dice_                                                                                                                                                                                                    
  70 . .\task5.ps1                                                                                                                                                                                             
  71 $dice_ = New-Object Dice                                                                                                                                                                                  
  72 $dice_ = New-Object Dice 10 0                                                                                                                                                                             
  73 $dice_ = New-Object Dice(10, 0)                                                                                                                                                                           
  74 $dice_                                                                                                                                                                                                    
  75 $dice_.Roll()                                                                                                                                                                                             
  76 ll                                                                                                                                                                                                        
  77 . .\task5.ps1                                                                                                                                                                                             
  78 $dice_ = New-Object Dice -ArgumentList @(15,0)                                                                                                                                                            
  79 $dice = New-Object Dice -ArgumentList @(15,0)                                                                                                                                                             
  80 $dice_                                                                                                                                                                                                    
  81 $dice_.Roll()                                                                                                                                                                                             
  82 [Dice]::new(35,73)                                                                                                                                                                                        
  83 $dice_.Roll()                                                                                                                                                                                             
  84 $dice_.Roll()                                                                                                                                                                                             
  85 $dice_.Roll()                                                                                                                                                                                             
  86 $dice_.Roll()                                                                                                                                                                                             
  87 $dice_.Roll()                                                                                                                                                                                             
  88 $dice_.Roll()                                                                                                                                                                                             
  89 $dice                                                                                                                                                                                                     
  90 $dice_                                                                                                                                                                                                    
  91 $dice_ = [Dice]::new(75,34)                                                                                                                                                                               
  92 $dice_.Roll()                                                                                                                                                                                             
  93 $dice_.Roll()                                                                                                                                                                                             
  94 $dice_.Roll()                                                                                                                                                                                             
  95 $dice_.Roll()                                                                                                                                                                                             
  96 $dice_.Roll()                                                                                                                                                                                             
  97 $dice_.Roll()                                                                                                                                                                                             
  98 $dice_.Roll()                                                                                                                                                                                                    
#>
<#
Video Get-Member cmdlet:
------------------------------------------------------
4 Get-Help Get-Member -Detailed                                                                                                                                                                                                                                            
5 Get-Service                                                                                                                                                                                                                                                              
6 Get-Service | Get-Member                                                                                                                                                                                                                                                 
7 Get-ChildItem C: | where { $_.PsIsContainer -eq $false } | Format-List                                                                                                                                                                                                   
8 Get-Process -Name "Notepad"                                                                                                                                                                                                                                              
9 Get-Process -Name "Notepad"                                                                                                                                                                                                                                              
10 Get-Process -Name "Notepad"                                                                                                                                                                                                                                              
11 $Process = Get-Process -Name "Notepad"                                                                                                                                                                                                                                   
12 Get-Member -InputObject $Process                                                                                                                                                                                                                                         
13 $Process.Name                                                                                                                                                                                                                                                            
14 $Process.SI                                                                                                                                                                                                                                                              
15 $Process.Path                                                                                                                                                                                                                                                            
16 $Process.WaitForExit()                                                                                                                                                                                                                                                   
17 $Process.WaitForExit()                                                                                                                                                                                                                                                   
18 $Process.WaitForExit()                                                                                                                                                                                                                                                   
19 $Process.WaitForExit()                                                                                                                                                                                                                                                   
20 $Process.WaitForExit()                                                                                                                                                                                                                                                   
21 $Process.WaitForExit()                                                                                                                                                                                                                                                   
22 $Process = Get-Process -Name "Notepad"                                                                                                                                                                                                                                   
23 $Process.WaitForExit()                                                                                                                                                                                                                                                   
24 $Process = Get-Process -Name "Notepad"                                                                                                                                                                                                                                   
25 $Process = Get-Process -Name "Notepad"                                                                                                                                                                                                                                   
26 Get-ChildItem                                                                                                                                                                                                                                                            
27 $Derictory_ = Get-ChildItem                                                                                                                                                                                                                                              
28 $Derictory_                                                                                                                                                                                                                                                              
29 Get-Member -InputObject $Derictory_                                                                                                                                                                                                                                      
30 $Derictory_ | Get-Member Balue                                                                                                                                                                                                                                           
31 $Derictory_ | Get-Member Value
------------------------------------------------------
#>