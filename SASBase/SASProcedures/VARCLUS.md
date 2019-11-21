The VARCLUS Procedure
========================
- divides a set of numeric variables into disjoint or hierarchical clusters
- a linear combination of the variables in the cluster (first principal component or the centroid component) is associated with each cluster
- tries to maximize the variance that is explained by the cluster components, summed over all the clusters
- cluster components are oblique
- either the correlation or the covariance matrix can be analyzed
- creates an output data set that can be used with the SCORE procedure to compute component scores for each cluster
- creates an output data set that can be used with the TREE procedure to draw a tree diagram of hierarchical clusters
- base the clustering on partial correlations
- obtain separate analyses on observations in groups
- perform weighted analysis
