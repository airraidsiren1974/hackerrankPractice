-- calculate the median for all the latitudes. Round to 4 decimal places.

select round(median(lat_n),4) from station;