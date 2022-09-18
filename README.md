# Log Analytics Report Automation
Scripts for log analytics using Extract, Transform, and Load (ETL) methodology.

## Extract
Extract reports from Enterprise Antivirus Server (MacAfee) in .csv files.
- Start PowerAutomate for automatic data retrieval from Enterprise Admin SharePoint
- Store data for historical archive

## Transform data
Start data preparation, filter key data points and generate new .csv report for PowerBi to display graphical dashboard.

### Leverage Desktop PowerAutomate
Using a PowerShell script, download and transform .csv report:
- Filter IP address
- Filter object DNS 
- Filter last detected state
- Sum failed instances
- Output new filtered .csv reports

### Leverage PowerBi
Pull filter .csv file into PowerBI and present graphical dashboard.