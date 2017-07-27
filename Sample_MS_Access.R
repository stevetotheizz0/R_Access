
rm(list=ls())
dev.off()

library(Hmisc)
library(RODBC)

mdbConnect<-odbcConnectAccess("D:/Users/SGA1/Desktop/LA crash data/2004_jefferson_crash_plus_dotd.mdb")

mdb.get("D:/Users/SGA1/Desktop/LA crash data/2004_jefferson_crash_plus_dotd.mdb", tables=TRUE)

mdbConnect

test <- sqlTables(mdbConnect)

CODE_TB <- sqlFetch(mdbConnect, "CODE_TB")
CRASH_TB <- sqlFetch(mdbConnect, "CRASH_TB")
DOTD_TB <- sqlFetch(mdbConnect, "DOTD_TB")
OCCUP_TB <- sqlFetch(mdbConnect, "OCCUP_TB")
PARISHES <- sqlFetch(mdbConnect, "PARISHES")
PEDES_TB <- sqlFetch(mdbConnect, "PEDES_TB")
TRAIN_TB <- sqlFetch(mdbConnect, "TRAIN_TB")
TROCC_TB <- sqlFetch(mdbConnect, "TROCC_TB")
VEHIC_TB <- sqlFetch(mdbConnect, "VEHIC_TB")

