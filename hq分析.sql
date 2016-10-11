





--1 !!! Get priceChangeBeginTime, jsPrice, lowBidPrice, highBidPrice, addLowPrice & addHighPrice
SELECT 
	date,
	min(time) AS �۸�䶯��ʼʱ���, 
	max(jsprice) AS ��ʾ��,
	max(hprice)-300 AS ������ͳɽ���, 
	max(hprice) AS ������߳ɽ���, 
	max(hprice)-min(jsprice)-300 AS �ɽ��۽Ͼ�ʾ�����Ƿ���,
	max(hprice)-300-min(hprice)+300+300 AS ����ʱ�����ͼۻ����Զ���Ӽ۷�������߼�
FROM "hq$" 
WHERE time >= '11:00:00'  AND
 DATE >= 201603
GROUP BY date;


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
ORDER BY "hq$".date ASC;





--3 !!! Get priceChangeBeginTime, jsPrice, lowBidPrice, highBidPrice, addLowPrice & addHighPrice, lowBidTime at the first coming lowBidPrice

SELECT a.date, a.�۸�䶯��ʼʱ���, b.lowBidTime, b.highBidTime, a.* FROM 
	(
		SELECT 
			date,
			min(time) AS �۸�䶯��ʼʱ���, 
			max(jsprice) AS ��ʾ��,
			max(hprice)-300 AS ������ͳɽ���, 
			max(hprice) AS ������߳ɽ���, 
			max(hprice)-min(jsprice)-300 AS �ɽ��۽Ͼ�ʾ�����Ƿ���,
			max(hprice)-300-min(hprice)+300+300 AS ����ʱ�����ͼۻ����Զ���Ӽ۷�������߼�
		FROM "hq$" 
		WHERE time >= '11:00:00'  AND
		 DATE >= 201603
		GROUP BY date
	) a, 
 

	(
	SELECT "hq$".date, min("hq$".time) AS lowBidTime, max("hq$".time) AS highBidTime, min("hq$".hprice) AS lowBidPrice    FROM "hq$",
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
	) b
WHERE a.date = b.date




/*

SELECT 
	date,
	max(jsprice) AS ��ʾ��,
	min(time) AS �۸�䶯��ʼʱ���, 
	--min(hprice) AS ����ʱ�����߼�,
	max(hprice)-300 AS ������ͳɽ���, 
	max(hprice) AS ������߳ɽ���, 
	---max(hprice)-300-min(hprice) AS ����ʱ��ε���ͳɽ��۸����ӵ�λ,
	max(hprice)-min(jsprice)-300 AS �ɽ��۽Ͼ�ʾ�����Ƿ���,
	--max(hprice)-300-min(hprice)+300 AS ����ʱ�����ͼۻ����Զ���Ӽ۷���,
	max(hprice)-300-min(hprice)+300+300 AS ����ʱ�����ͼۻ����Զ���Ӽ۷�������߼�
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
	max(jsprice) AS ��ʾ��,
	min(time) AS ����ʱ��, 
	min(hprice) AS ����ʱ�����߼�,
	max(hprice)-300 AS ������ͳɽ���, 
	max(hprice) AS ������߳ɽ���, 
	max(hprice)-300-min(hprice) AS ����ʱ��ε���ͳɽ��۸����ӵ�λ,
	max(hprice)-min(jsprice)-300 AS �ɽ��۽Ͼ�ʾ�����Ƿ���,
	max(hprice)-300-min(hprice)+300 AS ����ʱ�����ͼۻ����Զ���Ӽ۷���,
	max(hprice)-300-min(hprice)+300+300 AS ����ʱ�����ͼۻ����Զ���Ӽ۷�������߼�
FROM "hq$" 
WHERE time >= '11:29:30'
GROUP BY date



SELECT 
	date,
	max(jsprice) AS ��ʾ��,
	min(time) AS ����ʱ��, 
	min(hprice) AS ����ʱ�����߼�,
	max(hprice)-300 AS ������ͳɽ���, 
	max(hprice) AS ������߳ɽ���, 
	max(hprice)-300-min(hprice) AS ����ʱ��ε���ͳɽ��۸����ӵ�λ,
	max(hprice)-min(jsprice)-300 AS �ɽ��۽Ͼ�ʾ�����Ƿ���,
	max(hprice)-300-min(hprice)+300 AS ����ʱ�����ͼۻ����Զ���Ӽ۷���,
	max(hprice)-300-min(hprice)+300+300 AS ����ʱ�����ͼۻ����Զ���Ӽ۷�������߼�
FROM "hq$" 
WHERE time >= '11:29:45'
GROUP BY date


SELECT 
	date,
	max(jsprice) AS ��ʾ��,
	min(time) AS ����ʱ��, 
	min(hprice) AS ����ʱ�����߼�,
	max(hprice)-300 AS ������ͳɽ���, 
	max(hprice) AS ������߳ɽ���, 
	max(hprice)-300-min(hprice) AS ����ʱ��ε���ͳɽ��۸����ӵ�λ,
	max(hprice)-min(jsprice)-300 AS �ɽ��۽Ͼ�ʾ�����Ƿ���,
	max(hprice)-300-min(hprice)+300 AS ����ʱ�����ͼۻ����Զ���Ӽ۷���,
	max(hprice)-300-min(hprice)+300+300 AS ����ʱ�����ͼۻ����Զ���Ӽ۷�������߼�
FROM "hq$" 
WHERE time >= '11:29:40'
GROUP BY date



SELECT 
	date,
	max(jsprice) AS ��ʾ��,
	min(time) AS ����ʱ��, 
	min(hprice) AS ����ʱ�����߼�,
	max(hprice)-300 AS ������ͳɽ���, 
	max(hprice) AS ������߳ɽ���, 
	max(hprice)-300-min(hprice) AS ����ʱ��ε���ͳɽ��۸����ӵ�λ,
	max(hprice)-min(jsprice)-300 AS �ɽ��۽Ͼ�ʾ�����Ƿ���,
	max(hprice)-300-min(hprice)+300 AS ����ʱ�����ͼۻ����Զ���Ӽ۷���,
	max(hprice)-300-min(hprice)+300+300 AS ����ʱ�����ͼۻ����Զ���Ӽ۷�������߼�
FROM "hq$" 
WHERE time >= '11:30:00'
GROUP BY date




SELECT 
	date,
	max(jsprice) AS ��ʾ��,
	min(time) AS ����ʱ��, 
	min(hprice) AS ����ʱ�����߼�,
	max(hprice)-300 AS ������ͳɽ���, 
	max(hprice) AS ������߳ɽ���, 
	max(hprice)-300-min(hprice) AS ����ʱ��ε���ͳɽ��۸����ӵ�λ,
	max(hprice)-min(jsprice)-300 AS �ɽ��۽Ͼ�ʾ�����Ƿ���,
	max(hprice)-300-min(hprice)+300 AS ����ʱ�����ͼۻ����Զ���Ӽ۷���,
	max(hprice)-300-min(hprice)+300+300 AS ����ʱ�����ͼۻ����Զ���Ӽ۷�������߼�
FROM "hq$" 
WHERE time >= '11:29:00'
GROUP BY date

SELECT 
	date,
	max(jsprice) AS ��ʾ��,
	min(time) AS ����ʱ��, 
	min(hprice) AS ����ʱ�����߼�,
	max(hprice)-300 AS ������ͳɽ���, 
	max(hprice) AS ������߳ɽ���, 
	max(hprice)-300-min(hprice) AS ����ʱ��ε���ͳɽ��۸����ӵ�λ,
	max(hprice)-min(jsprice)-300 AS �ɽ��۽Ͼ�ʾ�����Ƿ���,
	max(hprice)-300-min(hprice)+300 AS ����ʱ�����ͼۻ����Զ���Ӽ۷���,
	max(hprice)-300-min(hprice)+300+300 AS ����ʱ�����ͼۻ����Զ���Ӽ۷�������߼�
FROM "hq$" 
WHERE time >= '11:28:30'
GROUP BY date



SELECT 
	date,
	max(jsprice) AS ��ʾ��,
	min(time) AS ����ʱ��, 
	min(hprice) AS ����ʱ�����߼�,
	max(hprice)-300 AS ������ͳɽ���, 
	max(hprice) AS ������߳ɽ���, 
	max(hprice)-300-min(hprice) AS ����ʱ��ε���ͳɽ��۸����ӵ�λ,
	max(hprice)-min(jsprice)-300 AS �ɽ��۽Ͼ�ʾ�����Ƿ���,
	max(hprice)-300-min(hprice)+300 AS ����ʱ�����ͼۻ����Զ���Ӽ۷���,
	max(hprice)-300-min(hprice)+300+300 AS ����ʱ�����ͼۻ����Զ���Ӽ۷�������߼�
FROM "hq$" 
WHERE time >= '11:28:00'
GROUP BY date




SELECT 
	date,
	max(jsprice) AS ��ʾ��,
	min(time) AS ����ʱ��, 
	min(hprice) AS ����ʱ�����߼�,
	max(hprice)-300 AS ������ͳɽ���, 
	max(hprice) AS ������߳ɽ���, 
	max(hprice)-300-min(hprice) AS ����ʱ��ε���ͳɽ��۸����ӵ�λ,
	max(hprice)-min(jsprice)-300 AS �ɽ��۽Ͼ�ʾ�����Ƿ���,
	max(hprice)-300-min(hprice)+300 AS ����ʱ�����ͼۻ����Զ���Ӽ۷���,
	max(hprice)-300-min(hprice)+300+300 AS ����ʱ�����ͼۻ����Զ���Ӽ۷�������߼�
FROM "hq$" 
WHERE time >= '11:27:00'
GROUP BY date



SELECT 
	date,
	max(jsprice) AS ��ʾ��,
	min(time) AS ����ʱ��, 
	min(hprice) AS ����ʱ�����߼�,
	max(hprice)-300 AS ������ͳɽ���, 
	max(hprice) AS ������߳ɽ���, 
	max(hprice)-300-min(hprice) AS ����ʱ��ε���ͳɽ��۸����ӵ�λ,
	max(hprice)-min(jsprice)-300 AS �ɽ��۽Ͼ�ʾ�����Ƿ���,
	max(hprice)-300-min(hprice)+300 AS ����ʱ�����ͼۻ����Զ���Ӽ۷���,
	max(hprice)-300-min(hprice)+300+300 AS ����ʱ�����ͼۻ����Զ���Ӽ۷�������߼�
FROM "hq$" 
WHERE time >= '11:26:00'
GROUP BY date



SELECT 
	date,
	max(jsprice) AS ��ʾ��,
	min(time) AS ����ʱ��, 
	min(hprice) AS ����ʱ�����߼�,
	max(hprice)-300 AS ������ͳɽ���, 
	max(hprice) AS ������߳ɽ���, 
	max(hprice)-300-min(hprice) AS ����ʱ��ε���ͳɽ��۸����ӵ�λ,
	max(hprice)-min(jsprice)-300 AS �ɽ��۽Ͼ�ʾ�����Ƿ���,
	max(hprice)-300-min(hprice)+300 AS ����ʱ�����ͼۻ����Զ���Ӽ۷���,
	max(hprice)-300-min(hprice)+300+300 AS ����ʱ�����ͼۻ����Զ���Ӽ۷�������߼�
FROM "hq$" 
WHERE time >= '11:25:00'
GROUP BY date


SELECT 
	date,
	max(jsprice) AS ��ʾ��,
	min(time) AS ����ʱ��, 
	min(hprice) AS ����ʱ�����߼�,
	max(hprice)-300 AS ������ͳɽ���, 
	max(hprice) AS ������߳ɽ���, 
	max(hprice)-300-min(hprice) AS ����ʱ��ε���ͳɽ��۸����ӵ�λ,
	max(hprice)-min(jsprice)-300 AS �ɽ��۽Ͼ�ʾ�����Ƿ���,
	max(hprice)-300-min(hprice)+300 AS ����ʱ�����ͼۻ����Զ���Ӽ۷���,
	max(hprice)-300-min(hprice)+300+300 AS ����ʱ�����ͼۻ����Զ���Ӽ۷�������߼�
FROM "hq$" 
WHERE time >= '11:24:00'
GROUP BY date



SELECT 
	date,
	max(jsprice) AS ��ʾ��,
	min(time) AS ����ʱ��, 
	min(hprice) AS ����ʱ�����߼�,
	max(hprice)-300 AS ������ͳɽ���, 
	max(hprice) AS ������߳ɽ���, 
	max(hprice)-300-min(hprice) AS ����ʱ��ε���ͳɽ��۸����ӵ�λ,
	max(hprice)-min(jsprice)-300 AS �ɽ��۽Ͼ�ʾ�����Ƿ���,
	max(hprice)-300-min(hprice)+300 AS ����ʱ�����ͼۻ����Զ���Ӽ۷���,
	max(hprice)-300-min(hprice)+300+300 AS ����ʱ�����ͼۻ����Զ���Ӽ۷�������߼�
FROM "hq$" 
WHERE time >= '11:23:00'
GROUP BY date




SELECT 
	date,
	max(jsprice) AS ��ʾ��,
	min(time) AS ����ʱ��, 
	min(hprice) AS ����ʱ�����߼�,
	max(hprice)-300 AS ������ͳɽ���, 
	max(hprice) AS ������߳ɽ���, 
	max(hprice)-300-min(hprice) AS ����ʱ��ε���ͳɽ��۸����ӵ�λ,
	max(hprice)-min(jsprice)-300 AS �ɽ��۽Ͼ�ʾ�����Ƿ���,
	max(hprice)-300-min(hprice)+300 AS ����ʱ�����ͼۻ����Զ���Ӽ۷���,
	max(hprice)-300-min(hprice)+300+300 AS ����ʱ�����ͼۻ����Զ���Ӽ۷�������߼�
FROM "hq$" 
WHERE time >= '11:22:00'
GROUP BY date



SELECT 
	date,
	max(jsprice) AS ��ʾ��,
	min(time) AS ����ʱ��, 
	min(hprice) AS ����ʱ�����߼�,
	max(hprice)-300 AS ������ͳɽ���, 
	max(hprice) AS ������߳ɽ���, 
	max(hprice)-300-min(hprice) AS ����ʱ��ε���ͳɽ��۸����ӵ�λ,
	max(hprice)-min(jsprice)-300 AS �ɽ��۽Ͼ�ʾ�����Ƿ���,
	max(hprice)-300-min(hprice)+300 AS ����ʱ�����ͼۻ����Զ���Ӽ۷���,
	max(hprice)-300-min(hprice)+300+300 AS ����ʱ�����ͼۻ����Զ���Ӽ۷�������߼�
FROM "hq$" 
WHERE time >= '11:21:00'
GROUP BY date


SELECT 
	date,
	max(jsprice) AS ��ʾ��,
	min(time) AS ����ʱ��, 
	min(hprice) AS ����ʱ�����߼�,
    min(hprice)-300-max(jsprice) AS ���ǵ�λ,	
	max(hprice)-300 AS ������ͳɽ���, 
	max(hprice) AS ������߳ɽ���, 
	max(hprice)-300-min(hprice) AS ����ʱ��ε���ͳɽ��۸����ӵ�λ,
	max(hprice)-min(jsprice)-300 AS �ɽ��۽Ͼ�ʾ�����Ƿ���,
	max(hprice)-300-min(hprice)+300 AS ����ʱ�����ͼۻ����Զ���Ӽ۷���,
	max(hprice)-300-min(hprice)+300+300 AS ����ʱ�����ͼۻ����Զ���Ӽ۷�������߼�
FROM "hq$" 
WHERE time >= '11:20:00'
GROUP BY date




UPDATE "hq$"  SET jsprice = 80600 WHERE date >= 201601