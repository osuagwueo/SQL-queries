with Hotels as

(select * from dbo.['2018$']
union
select * from dbo.['2019(1)$']
union
select * from dbo.['2019(2)$']
union
select * from dbo.['2020$'])
 

select * from Hotels

join dbo.Market_Segement$ as dbm on Hotels.market_segment = dbm.market_segment
join dbo.meal_cost$ as mc on Hotels.meal = mc.meal

/*select hotel, arrival_date_year, round( sum((stays_in_weekend_nights +stays_in_week_nights)*adr),2) as revenue
 from Hotels
 group by hotel, arrival_date_year */
