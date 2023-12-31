CREATE TABLE "FIELD_EXAMPLE" 
   (	"f1" VARCHAR2(255), 
	"f2" NVARCHAR2(255), 
	"f3" NUMBER(10,2), 
	"f4" FLOAT(100), 
	"f5" LONG, 
	"f6" DATE, 
	"f7" BINARY_FLOAT, 
	"f8" BINARY_DOUBLE, 
	"f9" TIMESTAMP (6), 
	"f10" TIMESTAMP (6) WITH TIME ZONE, 
	"f11" TIMESTAMP (6) WITH LOCAL TIME ZONE, 
	"f12" INTERVAL YEAR (2) TO MONTH, 
	"f13" INTERVAL DAY (2) TO SECOND (6), 
	"f14" RAW(255), 
	"f15" RAW(255), 
	"f16" ROWID, 
	"f17" UROWID (255), 
	"f18" CHAR(255), 
	"f19" NCHAR(255), 
	"f20" CLOB, 
	"f21" NCLOB, 
	"f22" BLOB, 
	"f23" BFILE, 
	"f3x1" NUMBER(20,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" 
 LOB ("f20") STORE AS BASICFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) 
 LOB ("f21") STORE AS BASICFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) 
 LOB ("f22") STORE AS BASICFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT))
