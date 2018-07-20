/*

Query the Manhattan Distance between points in latitude and longitude and round it to a scale of  decimal places.
*/

select round(max(lat_n) - min(lat_n) + max(long_w) - min(long_w),4) 
    from station;