
#Source sample file, delimit with tab 
$log_data = Import-Csv .\rouge_report_sample.csv -Delimiter "`t"

#testing formatting
$log_data | Format-Table

$line = "-"*10+"break"+"-"*10

$log_data | Select-Object "Computer Name", "Last Detected IP Address"

Write-Host "$line`n"

