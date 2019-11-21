The CLUSTER Procedure
=========================
- hierarchically clusters the observations in a SAS data set using one of the following 11 methods:
 - average linkage
 - centroid method
 - complete linkage
 - density linkage (including Wong’s hybrid and kth-nearest-neighbor methods)
 - maximum likelihood for mixtures of spherical multivariate normal distributions with equal variances but possibly unequal mixing proportions
 - flexible-beta method
 - McQuitty’s similarity analysis
 - median method
 - single linkage
 - two-stage density linkage
 - Ward’s minimum-variance
- data can be coordinates or distances
- CPU time is roughly proportional to the square or cube of the number of observations
- displays a history of the clustering process, showing statistics useful for estimating the number of clusters in the population from which the data are sampled
- creates an output data set that can be used by the TREE procedure to draw a tree diagram of the cluster hierarchy or to output the cluster membership at any desired level
