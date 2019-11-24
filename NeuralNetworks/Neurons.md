Neurons
==================

#### A Simple Neuron

- An artificial neuron is a device with many inputs and one output. 
- The neuron has two modes of operation; the training mode and the using mode. 
- In the training mode, the neuron can be trained to fire (or not), for particular input patterns. 
- In the using mode, when a taught input pattern is detected at the input, its associated output becomes the current output. If the input pattern does not belong in the taught list of input patterns, the firing rule is used to determine whether to fire or not.


#### Firing rules

The firing rule is an important concept in neural networks and accounts for their high flexibility. A firing rule determines how one calculates whether a neuron should fire for any input pattern. It relates to all the input patterns, not only the ones on which the node was trained.

A simple firing rule can be implemented by using Hamming distance technique. The rule goes as follows:

*Take a collection of training patterns for a node, some of which cause it to fire (the 1-taught set of patterns) and others which prevent it from doing so (the 0-taught set). Then the patterns not in the collection cause the node to fire if, on comparison , they have more input elements in common with the 'nearest' pattern in the 1-taught set than with the 'nearest' pattern in the 0-taught set. If there is a tie, then the pattern remains in the undefined state.*

#### References
- http://www.doc.ic.ac.uk/~nd/surprise_96/journal/vol4/cs11/report.html
