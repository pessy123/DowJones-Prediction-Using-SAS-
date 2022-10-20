/* Importing the data */


FILENAME REFFILE '/home/prasannamuppidi/sasuser.v94/gold_data.csv';

/* Gold CSV */

PROC IMPORT DATAFILE=REFFILE
	DBMS=CSV
	OUT=WORK.GOLD;
	GETNAMES=YES;
RUN;

PROC CONTENTS DATA=WORK.GOLD; RUN;

/* Crude CSV */

FILENAME REFFILE '/home/prasannamuppidi/sasuser.v94/crude_data.csv';

PROC IMPORT DATAFILE=REFFILE
	DBMS=CSV
	OUT=WORK.CRUDE;
	GETNAMES=YES;
RUN;

PROC CONTENTS DATA=WORK.CRUDE; RUN;


/* Dow CSV */

FILENAME REFFILE '/home/prasannamuppidi/sasuser.v94/dow_data.csv';

PROC IMPORT DATAFILE=REFFILE
	DBMS=CSV
	OUT=WORK.DOW;
	GETNAMES=YES;
RUN;

PROC CONTENTS DATA=WORK.DOW; RUN;



/* Lag Values -- Data Prep */

data WORK.FINAL1;
set WORK.GOLD;
close_gold = Close;
close_pd_gold = lag(Close);
high_pd_gold = lag(High);
open_pd_gold = lag(Open);
low_pd_gold = lag(Low);
DROP Close Open High Low Close Volume;
run;


data WORK.FINAL2;
set WORK.CRUDE;
close_crude = Close;
close_pd_crude = lag(Close);
high_pd_crude = lag(High);
open_pd_crude = lag(Open);
low_pd_crude = lag(Low);
DROP Close Open High Low Close Volume;
run;


data WORK.FINAL3;
set WORK.DOW;
close_dow = Close;
close_pd_dow = lag(Close);
high_pd_dow = lag(High);
open_pd_dow = lag(Open);
low_pd_dow = lag(Low);
DROP Close Open High Low Close Volume;
run;


/* Merging the data on basis of Date */

Data WORK.dummy;        
Merge WORK.FINAL3 WORK.FINAL2 WORK.FINAL1;
by Date;
run;


proc contents data=WORK.dummy;


/* Descriptive Analysis */

ods noproctitle;
ods graphics / imagemap=on;

proc means data=WORK.DUMMY chartype mean std min max n vardef=df;
	var close_dow close_crude close_gold;
run;


/* Correlation Matrix */


ods noproctitle;
ods graphics / imagemap=on;

proc corr data=WORK.DUMMY pearson nosimple noprob plots=none;
	var close_dow close_gold close_crude;
run;


/* Hypothesis 1 -- Regression Trees */


proc hpsplit data=WORK.DUMMY MAXDEPTH=3;
model close_dow = close_pd_crude close_pd_gold;
output out=result1;
prune none;
run; 






FILENAME REFFILE '/home/prasannamuppidi/sasuser.v94/DOW_Data_TA.csv';

/* Importing Technical Analysis Data of Dow */


PROC IMPORT DATAFILE=REFFILE
	DBMS=CSV
	OUT=WORK.DOW_TA;
	GETNAMES=YES;
RUN;

PROC CONTENTS DATA=WORK.DOW_TA; RUN;

/* CART code -- Classification Trees */

proc hpsplit data=WORK.DOW_TA MAXDEPTH=5;
class Return;
model Return = rsi sma lma adx;
output out=result2;
prune none;
run; 

