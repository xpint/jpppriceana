

SELECT * FROM "hq$" 
WHERE date = 201603
AND
time >= '11:29:40'

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
WHERE time >= '11:00:00'
GROUP BY date






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
WHERE time >= '11:29:00'
GROUP BY date




UPDATE "hq$"  SET jsprice = 80600 WHERE date >= 201601