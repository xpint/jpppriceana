





--1 !!! Get priceChangeBeginTime, jsPrice, lowBidPrice, highBidPrice, addLowPrice & addHighPrice
SELECT 
	date,
	min(time) AS 价格变动开始时间点, 
	max(jsprice) AS 警示价,
	max(hprice)-300 AS 最终最低成交价, 
	max(hprice) AS 最终最高成交价, 
	max(hprice)-min(jsprice)-300 AS 成交价较警示价上涨幅度,
	max(hprice)-300-min(hprice)+300+300 AS 出价时间点最低价基础自定义加价幅度至最高价
FROM "hq$" 
WHERE time >= '11:00:00'  AND
 DATE >= 201603
GROUP BY date


--2 !!! Get lowBidTime at the first coming lowBidPrice
SELECT "hq$".date, min("hq$".time) AS lowBidTime,min("hq$".hprice) AS lowBidPrice    FROM "hq$",
(
SELECT date, max(hprice)-300 AS thprice  FROM "hq$" 
WHERE
DATE >= 201603
GROUP BY date 
) "t"
WHERE 
"hq$".date = "t".date AND "hq$".hprice = "t".thprice
GROUP BY "hq$".date
ORDER BY "hq$".date ASC







/*

SELECT 
	date,
	max(jsprice) AS 警示价,
	min(time) AS 价格变动开始时间点, 
	--min(hprice) AS 出价时间点最高价,
	max(hprice)-300 AS 最终最低成交价, 
	max(hprice) AS 最终最高成交价, 
	---max(hprice)-300-min(hprice) AS 出价时间段到最低成交价格增加档位,
	max(hprice)-min(jsprice)-300 AS 成交价较警示价上涨幅度,
	--max(hprice)-300-min(hprice)+300 AS 出价时间点最低价基础自定义加价幅度,
	max(hprice)-300-min(hprice)+300+300 AS 出价时间点最低价基础自定义加价幅度至最高价
FROM "hq$" 
WHERE time >= '11:00:00'  AND
 DATE >= 201603
GROUP BY date

*/




800
800
700
800
600
700
400
1400



SELECT 
	date,
	max(jsprice) AS 警示价,
	min(time) AS 出价时间, 
	min(hprice) AS 出价时间点最高价,
	max(hprice)-300 AS 最终最低成交价, 
	max(hprice) AS 最终最高成交价, 
	max(hprice)-300-min(hprice) AS 出价时间段到最低成交价格增加档位,
	max(hprice)-min(jsprice)-300 AS 成交价较警示价上涨幅度,
	max(hprice)-300-min(hprice)+300 AS 出价时间点最低价基础自定义加价幅度,
	max(hprice)-300-min(hprice)+300+300 AS 出价时间点最低价基础自定义加价幅度至最高价
FROM "hq$" 
WHERE time >= '11:29:30'
GROUP BY date



SELECT 
	date,
	max(jsprice) AS 警示价,
	min(time) AS 出价时间, 
	min(hprice) AS 出价时间点最高价,
	max(hprice)-300 AS 最终最低成交价, 
	max(hprice) AS 最终最高成交价, 
	max(hprice)-300-min(hprice) AS 出价时间段到最低成交价格增加档位,
	max(hprice)-min(jsprice)-300 AS 成交价较警示价上涨幅度,
	max(hprice)-300-min(hprice)+300 AS 出价时间点最低价基础自定义加价幅度,
	max(hprice)-300-min(hprice)+300+300 AS 出价时间点最低价基础自定义加价幅度至最高价
FROM "hq$" 
WHERE time >= '11:29:45'
GROUP BY date


SELECT 
	date,
	max(jsprice) AS 警示价,
	min(time) AS 出价时间, 
	min(hprice) AS 出价时间点最高价,
	max(hprice)-300 AS 最终最低成交价, 
	max(hprice) AS 最终最高成交价, 
	max(hprice)-300-min(hprice) AS 出价时间段到最低成交价格增加档位,
	max(hprice)-min(jsprice)-300 AS 成交价较警示价上涨幅度,
	max(hprice)-300-min(hprice)+300 AS 出价时间点最低价基础自定义加价幅度,
	max(hprice)-300-min(hprice)+300+300 AS 出价时间点最低价基础自定义加价幅度至最高价
FROM "hq$" 
WHERE time >= '11:29:40'
GROUP BY date



SELECT 
	date,
	max(jsprice) AS 警示价,
	min(time) AS 出价时间, 
	min(hprice) AS 出价时间点最高价,
	max(hprice)-300 AS 最终最低成交价, 
	max(hprice) AS 最终最高成交价, 
	max(hprice)-300-min(hprice) AS 出价时间段到最低成交价格增加档位,
	max(hprice)-min(jsprice)-300 AS 成交价较警示价上涨幅度,
	max(hprice)-300-min(hprice)+300 AS 出价时间点最低价基础自定义加价幅度,
	max(hprice)-300-min(hprice)+300+300 AS 出价时间点最低价基础自定义加价幅度至最高价
FROM "hq$" 
WHERE time >= '11:30:00'
GROUP BY date




SELECT 
	date,
	max(jsprice) AS 警示价,
	min(time) AS 出价时间, 
	min(hprice) AS 出价时间点最高价,
	max(hprice)-300 AS 最终最低成交价, 
	max(hprice) AS 最终最高成交价, 
	max(hprice)-300-min(hprice) AS 出价时间段到最低成交价格增加档位,
	max(hprice)-min(jsprice)-300 AS 成交价较警示价上涨幅度,
	max(hprice)-300-min(hprice)+300 AS 出价时间点最低价基础自定义加价幅度,
	max(hprice)-300-min(hprice)+300+300 AS 出价时间点最低价基础自定义加价幅度至最高价
FROM "hq$" 
WHERE time >= '11:29:00'
GROUP BY date




UPDATE "hq$"  SET jsprice = 80600 WHERE date >= 201601