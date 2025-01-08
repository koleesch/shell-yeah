<# ==========================================
 # Friday 13th
 # ------------------------------------------
 # Our beloved neighbor is a bit superstitious and we would like to help to find the next critical Fridays when it is better to stay at home.
 # It should definitely be a one-liner that we can write on a piece of paper and pin to the door. 
 # Will you help our neighbor keep his peace of mind?
 #
 # ========================================== #>

 2022..2027 | ForEach-Object { 
  $year = $_
  "Fridays to stay in bed in " + $year + "?"
  $months = 1,2,3,4,5,6,7,8,9,10,11,12
  foreach ($month in $months)
  {
    $date = Get-Date -Year $year -Month $month -Day 13
    if ($date -eq [System.DayOfWeek]::Friday){
     Write-Output $date.ToString('yyyy-MM-dd')
     }
  }
 }
