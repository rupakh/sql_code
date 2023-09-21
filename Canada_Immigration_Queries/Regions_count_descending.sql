-- Query to find the regions' count to descending order for Github 

select region,count(*) from can_imm.canada_data
group by region
order by count(*) desc;

/*
Western Asia	18
Eastern Africa	17
Western Africa	16
Southern Europe	14
Caribbean	13
South America	12
Eastern Europe	10
South-Eastern Asia	10
Northern Europe	10
Southern Asia	9
Middle Africa	9
Western Europe	9
Central America	8
Northern Africa	7
Eastern Asia	7
Southern Africa	5
Central Asia	5
Polynesia	4
Melanesia	4
Micronesia	4
Australia and New Zealand	2
Northern America	2

*/