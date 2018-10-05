#Code downloads USGS historic streamflow data, reports current flow, organizes it into single .txt file

#USAGE: bash stream_info.sh gauge_site_number

#Loop to downloads necessary data for listed cites, cuts to include date/time/ most recent flow in cfs, creates file of all gauges and associated data

d=$(date +%Y-%m-%d)

for gauge in "02109500" "02134500" "02091814" "02105769"
  do
  wget -O "$gauge".txt "https://nwis.waterdata.usgs.gov/nc/nwis/uv/?cb_00060=on&format=rdb&site_no="$gauge"&period=&begin_date=1900-09-24&end_date="$d""
  tail -1 "$gauge".txt >> currentflow.txt
done
