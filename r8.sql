SELECT 
	a.f
FROM "Sheet1$" a, "Sheet1$" b
WHERE a.f = b.a;

SELECT 
	a.f
FROM "Sheet1$" a, "Sheet1$" b
WHERE a.f = b.b;

SELECT 
	a.f
FROM "Sheet1$" a, "Sheet1$" b
WHERE a.f = b.c;

SELECT 
	a.f
FROM "Sheet1$" a, "Sheet1$" b
WHERE a.f = b.d;

SELECT 
	a.f
FROM "Sheet1$" a, "Sheet1$" b
WHERE a.f = b.e;

SELECT 
	DISTINCT a.f
FROM "Sheet1$" a, "Sheet1$" b
WHERE a.f = b.f AND a.f <> NULL;


