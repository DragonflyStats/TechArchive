Hopfield net
=============
A Hopfield net is composed of binary threshold units with recurrent connections between them. Recurrent 
networks of non-linear units are generally very hard to analyze. They can behave in many different ways:
- Settle to a stable state
- Oscillate
- Follow chaotic trajectories that cannot be predicted far into the future.

A Hopfield net is a recurrent neural network having synaptic connection pattern such that there is an underlying Lyapunov function for the activity dynamics. Started in any initial state, the state of the system evolves to a final state that is a (local) minimum of the Lyapunov function.

#### Updating
Updates in the Hopfield network can be performed in two different ways:
- **Asynchronous:** Only one unit is updated at a time. This unit can be picked at random, or a pre-defined order can be imposed from the very beginning.
- **Synchronous:** All units are updated at the same time. This requires a central clock to the system in order to maintain synchronization. This method is less realistic, since biological or physical systems lack a global clock that keeps track of time.

#### References
- *http://www.cs.toronto.edu/~hinton/csc321/notes/lec16.pdf*
- *http://www.scholarpedia.org/article/Hopfield_network*
