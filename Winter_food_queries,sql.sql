create table winter_food_analysis(
id int,
item varchar(100),
type varchar(50),
origin varchar(50),
season varchar(50),
price_usd decimal(10,2),
calories varchar(50),
rating varchar(50),
popularity_score decimal(5,2)
);

select * from winter_food_analysis;

select 
count(*) as total_items,
round(cast(avg(price_usd) as numeric),2) as avg_price,
round(cast(avg(popularity_score)as numeric),2) as avg_popularity from winter_food_analysis;


select
type,
count(*) as item_count,
round(cast(avg(price_usd) as numeric),2) as avg_price,
round(cast(avg(popularity_score) as numeric),2) as avg_popularity
from winter_food_analysis
group by type;



select origin,
count(*) as total_items,
round(cast(avg(popularity_score) as numeric),2) as avg_popularity
from winter_food_analysis
group by origin
order by avg_popularity desc;



select season,
count(*) as count,
round(cast(avg(price_usd) as numeric),2) as avg_price
from winter_food_analysis
group by season;



select item, type, origin,popularity_score
from winter_food_analysis
order by popularity_score desc
limit 5;








































