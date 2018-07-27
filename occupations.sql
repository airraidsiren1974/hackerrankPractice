/*MySQL
Pivot the Occupation column in OCCUPATIONS so that each Name is sorted alphabetically and displayed underneath its corresponding Occupation. 
The output column headers should be Doctor, Professor, Singer, and Actor, respectively.

Note: Print NULL when there are no more names corresponding to an occupation.
*/

set @col1=0, @col2=0, @col3=0, @col4=0;
select min(Doctor), min(Professor), min(Singer), min(Actor)
from (
  select case when occupation = 'Doctor' then (@col1:=@col1+1)
                 when occupation = 'Professor' then (@col2:=@col2+1)
                 when occupation = 'Singer' then (@col3:=@col3+1)
                 when occupation = 'Actor' then (@col4:=@col4+1) end as RowNumber,
            case when occupation = 'Doctor' then Name end as Doctor,
            case when occupation = 'Professor' then Name end as Professor,
            case when occupation = 'Singer' then Name end as Singer,
            case when occupation = 'Actor' then Name end as Actor 
        from occupations
        order by name) as test_table
        group by RowNumber;
