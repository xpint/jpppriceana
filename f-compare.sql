
SELECT 
"ctpf$"."���ᱣ֤��", "ctpf$"."��֤��", "ctpf$"."Ȩ��", "ctpf$"."�����ʽ�"
FROM "ctpf$"
UNION
SELECT 
 round("ksf$"."�ܶ���", 0),
 round("ksf$"."�ܱ�֤��",0), 
 round("ksf$"."��̬Ȩ��", 0), 
 round("ksf$"."�����ʽ�",2)
FROM "ksf$"


