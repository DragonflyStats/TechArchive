SAS PROC GLM

Proc GLM is the preferred procedure for doing univariate analysis of variance (ANOVA), multivariate analysis of variance (MANOVA), and most types of regression.

Proc anova could also be used to do the analysis of variance when the design is balanced. The only advantage in using proc anova is that it uses less computational resources. Its use is recommended only for large projects in which experts have insured that the design is balanced.

The file pig.dat contains data on the birth weight of poland china pigs in 8 litters (from Scheffe). The layout of the file is the litter number followed by the birth weights for the litter. Note that there are unequal litter sizes. The underlying model is that each litter has some mean birth weight. The hypothesis to be tested is that these means are the same for all of the litters.

A data set called pig is created which contains 2 variables litter and weight. The variable litter contains the litter number; each corresponding value of weight contains the birth weight of a piglet. The model is that weight depends on litter. The question of interest is whether this dependence really exists. Note that litter is a qualitative variable here which serves only to distinguish between (potentially) different populations.

A basic analysis using proc glm proceeds as follows.


	proc glm data=pig; 
		class litter; 
		model weight = litter; 
	run;


The class statement specifies that litter is a QUALITATIVE variable. All qualitative independent variables in the model should be listed in the class statement. Independent variables which appear in the model but not in the class statement are treated as QUANTITATIVE variables in the model. This allows proc glm to perform regression and analyze analysis of covariance type models.

The model statement specifies the dependent variable (weight) and independent variable (litter).

The output of this procedure is a standard analysis of variance table. Two types of sums of squares are produced. In virtually all cases, it is the TYPE III sums of squares and their associated tests that are of interest.

A more in depth analysis is obtained as follows.


	proc glm data=pig; 
		class litter; 
		model weight=litter /solution e; 
		means litter /bon tukey scheffe alpha=0.10 ; 
	run;




The solution option of the model statement prints a solution to the normal equations, i.e., the estimate of the parameter vector in the general linear model.

The e option of the model statement produces a print out which specifies the general form of the estimable functions for the model. This is useful for more advanced analysis using contrast and estimate statements.

The means statement produces pairwise comparisons of the means by the method(s) specified in the following options statements. Note that comparisons are only done for the main effects.

The bon option of the means statement produces Bonferroni type groupings of the means.

The tukey option produces groupings of the means using Tukey's method of multiple comparison.

The scheffe option produces groupings of the means using Scheffe's method of multiple comparison.

Actual confidence intervals (rather than just groupings by similar means) produced by these methods can be obtained by specifying the clm option in the means statement.

The alpha=0.10 option specifies that the multiple comparison methods are to be done at the 90% confidence level. If not specified, the value defaults to alpha=0.05 (95% level).



The PIG data set
The pig data set contains data on the birth weight of poland china pigs in 8 litters (from Scheffe).

The layout of the file is the litter number followed by the birth weights for the litter. Note that there are unequal litter sizes.



1 2.0 2.8 3.3 3.2 4.4 3.6 1.9 3.3 2.8 1.1 
2 3.5 2.8 3.2 3.5 2.3 2.4 2.0 1.6 
3 3.3 3.6 2.6 3.1 3.2 3.3 2.9 3.4 3.2 3.2 
4 3.2 3.3 3.2 2.9 3.3 2.5 2.6 2.8 
5 2.6 2.6 2.9 2.0 2.0 2.1 
6 3.1 2.9 3.1 2.5 
7 2.6 2.2 2.2 2.5 1.2 1.2 
8 2.5 2.4 3.0 1.5 
