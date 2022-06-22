
#Source sample file, delimit with tab 
$log_data = Import-Csv .\rouge_report_sample.csv -Delimiter "`t"

### line break variable
$line = "-"*10+"break"+"-"*10

### filter csv by IP address
$filter1 = $log_data | Select-Object "Last Detected IP Address"

# line break
Write-Host "`n$line`n"



### zerozie placeholder variable
$i = 0 

### count each objects in csv
foreach ($computer in $filter1) {
    $i = $i + 1
    #Write-Host $currentItemName.'Last Detected IP Address'
}

### Output count
Write-Host -ForegroundColor 'red' "number of rogue devices = "$i 


### list objects
$log_data | Select-Object "Last Detected IP Address","Computer Name" | Format-Table

# line break
Write-Host "`n$line`n"