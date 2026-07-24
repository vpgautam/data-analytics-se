(lecture24)=
# Lecture 24 - Deep Neural Networks

## Objectives
+ Understand the mathematical structure of deep neural networks with dense layers.
+ Derive a loss function for regression tasks.
+ Cast the loss minimization problem as a stochastic optimization problem.
+ Use the stochastic gradient descent algorithm to solve a stochastic optimization problem.

## Notes: 24
+ NN are basically some functions that take from an input space to output space.
+ Why do NN work so well?
+  Universal Approximation theory guarantees that NN can represent any function arbitrarily well given sufficiently large number of Neurons.
+  Hierarchical representation of high dimensional data.
+  Formulating deterministic loss function minimization into a stochastic optimization problem. Look at `.\activities\pytorch-basics\autograd.ipynb` for detailed derivation.
