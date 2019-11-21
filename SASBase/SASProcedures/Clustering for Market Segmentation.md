Clustering for Market Segmentation
=========================================

http://www.lexjansen.com/nesug/nesug97/infviz/pratter.pdf

Customer segmentation is widely used as a wayof discovering natural groupings in order to
target marketing more effectively. It is natural
and logical to assume that different customers will want different kinds of products or services,
and market segmentation techniques are used to define groups of customers with similar attitudes
and/or requirements. The ultimate refinement of this approach is the idea that every customer comprises “a segment of one”. 

Unfortunately, at present it is not feasible to develop individualized marketing campaigns for each and
every customer, although current trends in electronic commerce suggest that this may
indeed one day be possible.

For the near term, however, it will continue to be necessary to identify groupings of like-minded
customers. The SAS® System offers several kinds of clustering algorithms that can be used
to try to discover market segments. This paper presents some revelations about how clustering
really works, and suggests some strategies to help make sense of the results.

<hr>
It is important to note that cluster analysis is an empirical technique without a great deal of theoretical basis. Thus, while a discussion of cluster analysis could well be included as a topic in statistics, it is just as appropriate to consider this approach as a tool for information visualization. In what follows, the focus will be
less on the details of the mathematical algorithms used and more on the visual
interpretation of the outcomes.

#### Iris Data Set
The data used for the examples given in this paper are taken from the library of SAS sample programs. These are the famous Fisher iris data of 1936. Four measurements were made on each
of 150 iris blooms: 
- sepal length in mm (sepallen), 
- sepal width in mm (sepalwid), 
- petal length in mm (petallen), and 
- petal width in mm (petalwid). 

The flowers had previously been identified as belonging to one of three iris
species: Setosa, Versicolor, or Virginica.
Two features of these data make them particularly useful as an example. First, all four
of the measurements are on the same interval scale, in millimeters. For clustering algorithms to
work correctly, an interval scale of measurement is required; ordinal or ranked data are generally
not appropriate. Second, there actually is an
underlying grouping, that is, species. This is not
just a philosophical notion. Cluster analysis will
always result in a set of segments. Unfortunately,
there is no “null hypothesis” that can be used to
decide whether the segments are real ones or not.

The clusters that are derived in these floral examples can be compared to the actual species
designations. In marketing no such validation is
possible, and the researcher is strongly cautioned
to beware segments that have been empirically
derived but which do not seem to have “face
validity”.

In general, there are two ways to develop clusters: hierarchical and agglomerative.

Hierarchical clustering relies on the assumption that for every group of n observations, there are
n possible cluster solutions, ranging from “every
customer a segment” to one big segment that
includes everyone. Obviously the most useful
groupings lie somewhere in between. The trick is
in deciding when to stop.
