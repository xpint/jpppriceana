
SELECT 
"ctpf$"."冻结保证金", "ctpf$"."保证金", "ctpf$"."权益", "ctpf$"."可用资金"
FROM "ctpf$"
UNION
SELECT 
 round("ksf$"."总冻结", 0),
 round("ksf$"."总保证金",0), 
 round("ksf$"."动态权益", 0), 
 round("ksf$"."可用资金",2)
FROM "ksf$"


