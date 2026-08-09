# Lecture 19 - State Space Models - Filtering Basics

## Objectives
+ Define the filtering problem.
+ Formalize the filtering problem using Markov models.
+ Formalize the filtering problem in the context of linear models with Gaussian process and measurement noise.
+ Demonstrate the filtering problem in the context of object tracking.

## Lecture 19.1
+ Filtering basics: 
+ To predict: state of the systems
+  What is available: Observations noisy


## Lecture 19.2
+ State-Space Models
+ The Markov Property
+ Stochastic dynamical systems: Everytime it starts from the same initial conditions, it follows a different trajectory!
+ Trajectory:
+ $X_{0:n} = (\text{x}_0, \text{x}_1, \cdots, \text{x}_n)$
  
```{mermaid}
graph LR
    x0(($$x_0$$)) -->|$$p(x_1|x_0)$$| x1(($$x_1$$))
    x0 -->|$$p(x_1|x_0)$$| x1b(($$x_1'$$))
    x1 -->|$$p(x_2|x_1)$$| x2(($$x_2$$))
    x1b -->|$$p(x_2|x_1')$$| x2b(($$x_2'$$))
```