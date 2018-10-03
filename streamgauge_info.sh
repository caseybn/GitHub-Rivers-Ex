# still trying to come up with the correct code
#depending on how it downloads we might be able to just use cut to give the most recent record??

for gaugue in "02109500" "02134500" "02091814" "02105769"
  do
  wget -O "$guage".txt https://nwis.waterdata.usgs.gov/nc/nwis/uv/?cb_00060=on&format=rdb&site_no="$gauge"&period=&begin_date=1900-09-24&end_date=2018-10-01
  cut head -n 1 > "$gauge".text
done
