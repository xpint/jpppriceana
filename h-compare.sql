
ctp：136338267
ks:  136338426.2

159.2


SELECT 35675058+100663368.2

SELECT 136338426.2 - 136338267


SELECT 
sum("ctph$"."卖占用保证金"),
sum("ctph$"."买占用保证金")
 FROM "ctph$"




SELECT *, t."卖占用保证金"-t."卖保证金" from
(
SELECT 
"ctph$"."合约" ,
"ksh$"."合约号",
"ctph$"."卖占用保证金", 
"ksh$"."卖保证金",
"ctph$"."总卖持",
"ksh$"."总卖"
 FROM "ctph$" left JOIN "ksh$"
 on "ctph$"."合约" = "ksh$"."合约号"
 ) t
WHERE 
t."卖占用保证金" <>
t."卖保证金"
 
 
 
 
