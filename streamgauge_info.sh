# still trying to come up with the correct code
#depending on how it downloads we might be able to just use cut to give the most recent record??

for gauge in "02109500" "02134500" "02091814" "02105769"
  do
  wget -O "$gauge".txt "https://nwis.waterdata.usgs.gov/nc/nwis/uv/?cb_00060=on&format=rdb&site_no="$gauge"&period=&begin_date=1900-09-24&end_date=2018-10-01"
  sed -n '17p' "$gauge".txt >> streamflows.txt
done
