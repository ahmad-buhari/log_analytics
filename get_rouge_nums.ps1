
#Source sample file, delimit with tab 
$log_data = Import-Csv .\rouge_report_sample.csv -Delimiter "`t"

### line break -- divider
$line = "-"*10+"break"+"-"*10

### filter csv by IP address
$filter1 = $log_data | Select-Object "Last Detected IP Address"

# line break
Write-Host "`n$line`n"



### zerozie placeholder variable
$i = 0 

### variable to count each objects (computer) in csv
foreach ($computer in $filter1) {
    $i = $i + 1
    #Write-Host $currentItemName.'Last Detected IP Address'
}

### Ouptut variable number for 
Write-Host -ForegroundColor 'red' "number of rogue devices = "$i 


### list  rouge computers (without antivirus software)
$log_data | Select-Object "Last Detected IP Address","Computer Name" | Format-Table

# line break
Write-Host "`n$line`n"