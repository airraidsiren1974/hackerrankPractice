select min_date, max_date
from (select min(start_date) as min_date, max(end_date) as max_date, count(dates_diff) as count_days
     from
     (select row_number() over(order by end_date) as number_of_tasks, start_date, end_date, start_date - row_number() over(order by end_date) as dates_diff
     from projects)
     group by dates_diff)
     order by count_days asc, min_date asc;
     