Rattle and R : Data Mining
==============================================
Contents
Rattle and R : Data Mining	1

###  Section 4 Supervised Classification	1
10.3 Measures	1
Section 12 Random Forests	2
Section 14 Support Vector Machines	2

 
### Section 4 Supervised Classification
Discriminanat Analysis
- 4.1.1 Classical Multivariate Statistics
- 4.1.2 Data Mining
Bivariate Plots

- 4.2.4 Taking Stock
- 4.3 Numerical Methods
- 4.3.1 Linear Discriminant Analysis
LDA is used to find the linear combination of variables that best separates classes.

<pre><code>
##pg.80
table(d.olive.sub[,1],pregion)
plot(predict(olive.lda,d.olive.sub)$x)
gd <-ggob(cbind(d.olive,pregion))[1]
glyph_colour(gd) <- c(crep(6,323),rep(5,98),rep(1,151))
</code></pre>

#### 10.3 Measures

Two Primary measures used in Association Analysis are
1) Support
2) Confidence

The minimum support is expressed as a percentage of the total number of transactions in the dataset.

Arules package provides apriori for R.

### Section 12 Random Forests
Multiple Inductive Learning (MIL)
In building single decision trees, it is often noted that there is very little difference between variables.

### Section 14 Support Vector Machines
14.1 Knowledge Representation
14.3 tUtorial Example using RATTLE
