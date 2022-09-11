# 1. Create two-dimensional strong defined string array. 
$array = New-Object 'string[,]' 2,2 # 2 cols and 2 rows


# 2. Put three different hash-tables in array. Retrieve value from the second key in third hash table in array.
$array_2 = New-Object System.Collections.ArrayList

$hashtable1 = @{ "key_1" = "home1"; "key_2" = "home2"; }
$hashtable2 = @{ "BY" = "Belarus"; "US" = "United States America"; }
$hashtable3 = @{ 
    "tea_1" = "green"
    "tea_2" = "red"
}

# Set value on array
$array_2.Add($hashtable1)
$array_2.Add($hashtable2)
$array_2.Add($hashtable3)

# get value 
$array_2[2].tea_2

# 3. Create nested hash-table and retrieve values by keys from it.
# hashtable dimensional
$hashTB = @{
    hashT1 = @{ "test_key_1" = "test_home_1" }
    hashT2 = @{ "test_key_2" = "test_home_2" }
}
$hashTB.hashT1.test_key_1
$hashTB.hashT2.test_key_2

# 4. Transform hash-table into ordered hash-table sorted by value.
$hashT = @{a = 12; g = 4; h = 1; t = 7; d = 8;}    
$hashT.GetEnumerator() | sort Value
$hashT

# 
'''
# Video 
############ array
[string[]]$array = @("apple", "orange", "banana")           # first index always 0
$array                                                      # check 
$array.Add("cucumber")                                      # Error (have fixed size))
$array.IsFixedSize                                          # True
$array += "watermelon"                                      # Will be create __new__ array on 4 cell 
Remove-Variable -Name "array"                               # Delete array
$array = New-Object System.Collections.ArrayList            # non-fixed array
$array.IsFixedSize                                          # False
$array.Add("cherry")                                        # add element without error
$array = @( (1,2), (3,4) )                                   # multidimensional array
$array[0..1] ; $array[0] ; $array[1] ; $array[0][1]         # and more - how get value in array or collection

############ hashtable
# 1
$CountryCodes = @{ "BY" = "Belarus"; "US" = "United States America"; "DE" = "Germany"; "AQ" = "Antarctica"; }   
$CountryCodes
$CountryCodes.GetType()                                                                                                  # type HashTable
$CountryCodes = [ordered]@{ "BY" = "Belarus"; "US" = "United States America"; "DE" = "Germany"; "AQ" = "Antarctica"; }   # [ordered] - Для соблюдения последовательности 
$CountryCodes.GetType()                                                                                                  # type orderedDictionary
# 2
[hashtable]$CountryCodes = @{}
$CountryCodes.Add("BY", "Belarus")
$CountryCodes.Add("US", "United States America")
$CountryCodes.Add("DE", "Germany")
$CountryCodes.Add("AQ", "Antarctica")
# 3
$CountryCodes.BY                            # Belarus 
$CountryCodes.BY = "Republic of Belarus"    
$CountryCodes.BY                            # Republic of Belarus
$CountryCodes
$CountryCodes["US", "DE"]                   # get value via key
$CountryCodes.Remove("AQ")                  # delete element
$($CountryCodes.GetEnumerator())[1]         # get second element 
'''
# Массив - это структура данных, предназначенная для хранения коллекции элементов. !!! В PowerShell Элементы массива могут быть одного типа или разных типов.
# =========== Intresting Examples
# [Diagnostics.Process[]]$zz = Get-Process
# $a = @("Hello World") ; $a.Count
# $p = @(Get-Process Notepad)
# $C = 5..8
'''
В PowerShell каждая хеш-таблица является объектом Hashtable или если быть точным то System.Collections.Hashtable. 
Из этого вытекает что все свойства и методы объектов Hashtable доступны в PowerShell и детально описаны в .Net Framework 
документации. Порядок ключей в хеш-таблице не определен. Чтобы это обойти можно использовать атрибут [ordered] заключенный 
в квадратные скобки перед объявлением хеш-таблицы. В этом случае ключи всегда отображаются в порядке их перечисления.
Но стоит быть внимательным, так как в этом случае хеш-таблица будет уже не Hashtable объектом,
а System.Collections.Specialized.OrderedDictionary, которая имеет отличные от хеш-таблицы свойства и методы.
'''