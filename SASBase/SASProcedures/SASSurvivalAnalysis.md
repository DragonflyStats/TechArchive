 
Survival data consist of a response (event time, failure time, or survival time) variable that measures the duration of time until a specified event occurs and possibly a set of independent variables thought to be associated with the failure time variable. These independent variables (concomitant variables, covariates, or prognostic factors) can be either discrete, such as sex or race, or continuous, such as age or temperature. The system that gives rise to the event of interest can be biological, as for most medical data, or physical, as for engineering data. The purpose of survival analysis is to model the underlying distribution of the failure time variable and to assess the dependence of the failure time variable on the independent variables.
 
The following data is from Prentice, R.L. "Exponential survivals with censoring and explanatory variables.", Biometrika 60, 1973, 279-288.   
 
The LIFETEST procedure computes nonparametric estimates of the survival distribution function. You can request either the product-limit (Kaplan and Meier) or the life-table (actuarial) estimate of the distribution. PROC LIFETEST computes nonparametric tests to compare the survival curves of two or more groups.
 
 
The following statements are available in PROC LIFETEST:
<pre><code> 
PROC LIFETEST < options > ;
TIME variable < *censor(list) > ;
BY variables ;
FREQ variable ;
ID variables ;
STRATA variable < (list) > <  ... variable < (list) > > ;
SURVIVAL options ;
TEST variables ;
</code></pre>

Some of these options include:
 
METHOD=type
specifies the method used to compute the survival function estimates. Valid values for type are as follows.
PL | KM
specifies that product-limit (PL) or Kaplan-Meier (KM) estimates are computed.
ACT | LIFE | LT
specifies that life-table (or actuarial) estimates are computed.

By default, METHOD=PL.
 
PLOTS= ( type <(NAME=name)> <, ..., type <(NAME=name)> > )
creates plots of survival estimates or censored observations, where type is the type of plot and name is a catalog entry name of up to eight characters. Valid values of type are as follows:
CENSORED | C
specifies a plot of censored observations by strata (product-limit method only).
SURVIVAL | S
specifies a plot of the estimated SDF versus time.
LOGSURV | LS
specifies a plot of the -log( estimated SDF) versus time.
LOGLOGS | LLS
specifies a plot of the log(-log( estimated SDF)) versus log( time).
 
HAZARD | H
specifies a plot of the estimated hazard function versus time (life-table method only).
PDF | P
specifies a plot of the estimated probability density function versus time (life-table method only).

Parentheses are required in specifying the plots. For example,
 
   plots = (s)
requests a plot of the estimated survivor function versus time, and
 
   plots = (s(name=Surv2), h(name=Haz2))
 
requests a plot of the estimated survivor function versus time and a plot of the estimated hazard function versus time, with Surv2 and Haz2 as their catalog names, respectively.
 
STRATA Statement
STRATA variable < (list) > <  ... variable < (list) > > < /options >;

The STRATA statement indicates which variables determine strata levels for the computations. The strata are formed according to the nonmissing values of the designated strata variables. The MISSING option can be used to allow missing values as a valid stratum level. Other options enable you to specify various k-sample tests, trend tests and stratified tests. The specification of STRATA variables can have any of the following forms:
 
list separated by blanks	strata age(5 10 20 30)
list separated by commas	strata age(5,10,20,30)
x to y	strata age(5 to 10)
x to y by z	strata age(5 to 30 by 10)
combination of the above	strata age(5,10 to 50 by 10)
 

For example, the specification  
   strata age(5,20 to 50 by 10) sex;
 
indicates the following levels for the Age variable
 
 
 
 
Example Survival Analysis
 
Following is a example analysis: (PROC-LIFE-1.SAS)
 
ODS HTML;
ODS GRAPHICS On;
proc lifetest data=mydata.Life plots=(s);
   time SURVIVAL * CENSOR (0);  
   title 'Survival Analysis -- One group';
run;
*..............................Including a grouping variable;
proc lifetest data=mydata.Life plots=(s);
   time SURVIVAL * CENSOR (0);
   strata GROUP;
   title 'Survival Analysis -- Compare Groups';
run;
ODS HTML CLOSE;
ODS GRAPHICS OFF;
quit;
 
Results in the following (partial) output. The first table is the Product-Limit Survival Estimates
 
The LIFETEST Procedure
Product-Limit Survival Estimates
SURVIVAL	 	Survival	Failure	Survival Standard
Error	Number 
Failed	Number 
Left
0.000	 	1.0000	0	0	0	62
1.000	 	.	.	.	1	61
1.000	 	0.9677	0.0323	0.0224	2	60
3.000	 	0.9516	0.0484	0.0273	3	59
7.000	 	0.9355	0.0645	0.0312	4	58
8.000	 	.	.	.	5	57
8.000	 	.	.	.	6	56
8.000	 	0.8871	0.1129	0.0402	7	55
10.000	 	0.8710	0.1290	0.0426	8	54
SKIP…	 	0.8548	0.1452	0.0447	9	53
389.000	 	0.1010	0.8990	0.0417	52	5
411.000	 	0.0808	0.9192	0.0379	53	4
467.000	 	0.0606	0.9394	0.0334	54	3
587.000	 	0.0404	0.9596	0.0277	55	2
991.000	 	0.0202	0.9798	0.0199	56	1
999.000	 	0	1.0000	0	57	0
 
 
 
                        Summary Statistics for Time Variable SURVIVAL
Quartile Estimates
Percent	Point 
Estimate	95% Confidence Interval
		[Lower	Upper)
75	186.000	117.000	314.000
50	84.000	48.000	117.000
25	30.000	12.000	45.000
 
Mean	Standard Error
158.006	29.467
 
 
 
Summary of the Number of Censored and
Uncensored Values
Total	Failed	Censored	Percent
Censored
62	57	5	8.06
 
 
The next output compares groups:
First are the survival estimates for people by group.
 
The LIFETEST Procedure
Stratum 1: GROUP = 0
Product-Limit Survival Estimates
SURVIVAL	 	Survival	Failure	Survival Standard
Error	Number 
Failed	Number 
Left
0.000	 	1.0000	0	0	0	38
1.000	 	.	.	.	1	37
1.000	 	0.9474	0.0526	0.0362	2	36
7.000	 	0.9211	0.0789	0.0437	3	35
8.000	 	0.8947	0.1053	0.0498	4	34
15.000	 	0.8684	0.1316	0.0548	5	33
18.000	 	0.8421	0.1579	0.0592	6	32
19.000	 	0.8158	0.1842	0.0629	7	31
…etc	 	0.7895	0.2105	0.0661	8	30
 
Summary Statistics for Time Variable SURVIVAL
Quartile Estimates
Percent	Point 
Estimate	95% Confidence Interval
		[Lower	Upper)
75	242.000	111.000	467.000
50	76.500	44.000	140.000
25	30.000	18.000	48.000
 
Mean	Standard Error
188.454	45.476
 
Next are estimates for people in group 1
 
                                    The LIFETEST Procedure
Stratum 2: GROUP = 1
Product-Limit Survival Estimates
SURVIVAL	 	Survival	Failure	Survival Standard
Error	Number 
Failed	Number 
Left
0.000	 	1.0000	0	0	0	24
3.000	 	0.9583	0.0417	0.0408	1	23
8.000	 	.	.	.	2	22
8.000	 	0.8750	0.1250	0.0675	3	21
10.000	 	0.8333	0.1667	0.0761	4	20
11.000	 	0.7917	0.2083	0.0829	5	19
12.000	 	0.7500	0.2500	0.0884	6	18
25.000	*	.	.	.	6	17
..etc	 	0.7059	0.2941	0.0936	7	16
 
Note:	The marked survival times are censored observations.
Summary Statistics for Time Variable SURVIVAL
Quartile Estimates
Percent	Point 
Estimate	95% Confidence Interval
		[Lower	Upper)
75	132.000	110.000	228.000
50	95.000	42.000	126.000
25	23.500	8.000	92.000
 
Mean	Standard Error
110.970	22.259
 
Summary of the Number of Censored and Uncensored
Values
Stratum	GROUP	Total	Failed	Censored	Percent
Censored
1	0	38	35	3	7.89
2	1	24	22	2	8.33
Total	 	62	57	5	8.06
 
Testing Homogeneity of Survival Curves for SURVIVAL over Strata
 
 Test of Equality over Strata

Test	Chi-Square	DF	Pr > 
Chi-Square
Log-Rank	0.7698	1	0.3803
 Wilcoxon	0.0094	1	0.9229
-2Log(LR)	2.9076	1	0.0882
 
 
 
 
 

