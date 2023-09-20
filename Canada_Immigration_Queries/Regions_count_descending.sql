-- Query to find the regions' count to descending order

select region,count(*) from can_imm.canada_data
group by region
order by count(*) desc;