#Code downloads USGS historic streamflow data, reports current flow, organizes it into single .txt file

#USAGE: bash stream_info.sh gauge_site_number

#Loop to downloads necessary data for listed cites, cuts to include date/time/ most recent flow in cfs, creates file of all gauges and associated data
for gauge in "02109500" "02134500" "02091814" "02105769"
  do
  wget -O "$gauge".txt "https://nwis.waterdata.usgs.gov/nc/nwis/uv/?cb_00060=on&format=rdb&site_no="$gauge"&period=&begin_date=1900-09-24&end_date=2018-10-01"
  sed -n '17p' "$gauge".txt >> streamflow.txt
  cut -f 3,5 "$gauge".txt | tail -n 1 >> streamflow.txt
done

#paste information into a neat line per site
paste - - - < streamflow.txt > currentflow.txt
#removes old text files
rm streamflow.txt
