--sum all values for latitude and all values for longitude. Round to the nearest hundreth

select round(sum(lat_n),2) as lat,
       round(sum(long_w),2) as lon
       from station;

--- sum all values for latitude where values are greater than 38.7880 and less than 137.2345. Round to 4 decimal places

select round(sum(lat_n),4) 
    from station
    where lat_n > 38.7880 
    and lat_n < 137.2345;

--- query max latitude where the value is less than 137.2345. Round to 4 decimal places.

select round(max(lat_n),4)
    from station
    where lat_n < 137.2345;

--- query longitude for the max latitude where latitude is less than 137.2345. Round to 4 decimal places.

select round(long_w,4) as a
from station
where lat_n=(select max(lat_n) from station where lat_n < 137.2345);

--- query smallest latitude where latitude is greater than 38.7780. Round to 4 decimal places.

select round(min(lat_n),4) from station where lat_n > 38.7780;

--- query longitude for the min latitude where latitude is greater than 38.7780. Round to 4 decimal places.

select round(long_w,4) as a
from station
where lat_n=(select min(lat_n) from station where lat_n > 38.7780);