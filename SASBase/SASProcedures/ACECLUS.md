ACECLUS
=============

#### Example 23.1 Transformation and Cluster Analysis of Fisher Iris Data
The iris data published by Fisher (1936) have been widely used for examples in discriminant analysis and cluster analysis. The sepal length, sepal width, petal length, and petal width are measured in millimeters on 50 iris specimens from each of three species, Iris setosa, I. versicolor, and I. virginica. Mezzich and Solomon (1980) discuss a variety of cluster analyses of the iris data.

In this example PROC ACECLUS is used to transform the iris data, which is available from the Sashelp library, and the clustering is performed by PROC FASTCLUS. Compare this with the example in Chapter 35, The FASTCLUS Procedure. The results from the FREQ procedure display fewer misclassifications when PROC ACECLUS is used.


The following statements produce Output 23.1.1 through Output 23.1.5:


<pre><code>

title 'Fisher (1936) Iris Data';

proc aceclus data=sashelp.iris out=ace p=.02 outstat=score;
   var SepalLength SepalWidth PetalLength PetalWidth ;
run;

proc sgplot data=ace;
   scatter y=can2 x=can1 / group=Species;   
   keylegend / title="Species";
run;

proc fastclus data=ace maxc=3 maxiter=10 conv=0 out=clus;
   var can:;
run;

proc freq;
   tables cluster*Species;
run;
</code></pre>
