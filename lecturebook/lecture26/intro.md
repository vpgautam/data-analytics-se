# Lecture 26 - Physics-informed Deep Neural Networks

## Objectives
+ Develop intuition about the potential applications of the ability to combine existing physical knowledge with data.
+ Develop intuition about the importance of symmetries in helping us learn with less data.
+ Use physics-informed neural networks to solve ordinary differential equations.
+ Use physics-informed neural networks to solve partial differential equations.
+ Use physics-informed neural networks to solve high-dimensional stochastic partial differential equations.

## Lecture Notes 26.1
+ PINNS tries to exploit symmetries, invariances and equivariances about the physical probelm. The point is the availablitiy of physical equations in the form of ordinary differential equations/ partial differential equations. We aim to use these equations as a regualizer to our network.$L(\theta) = Data-part + Physics-informed \ regularization$
  
## Lecture Notes 26.2
+ The idea is that we cannot make infinite number of simulations. We should try to learn the surrogate of the energy (in the give example) using only a finite number of simulations.
+ If we use a simple NN. The issue that we will face is that we will have too many parameters to train and way too observations to train on.
+ For example, for engery of the given set of atoms, we can rotate the coordinate system, translate the coordinate system, permute the same elements. These transformations will not change the energy of the system.
+ **The question we wish to answer is that can we build these invariances in a NN?**
+ **Invariance:** $F(TR) = F(R)$ where $R$ is the input and $T$ is the transformation.
+ **Equivariance:** $F(\Pi R) = \Pi F(R)$ where $\Pi$ is the transformation.
+ **Covariance:** $F(Q R) = Q* F(R)$ where $Q*$ is the transformation.
+ In general, if we cannot decide on a particular symmetriy, we can use data augmentation.

### Lecture Notes 26.3
+ From ODE to a loss function: Take an Initial Value Problem, $du/dt = f(t, u)$ and $u(0) = u_0$
+ *IDEA:* Represent the solution with a DNN.
$$
\begin{align}
u(t) = u_0 + t \times N(t; \theta) ;\ u(0) = u_0 
\end{align}
$$
+ Now how to turn the equation above into a loss function. $L(\theta) = \int_0^T \{ \frac{\partial u}{\partial t} - f(t,u) \}^2 \partial t$
+ It can now be solved using SGD!
+ $L(\theta) = \int_0^T l(t, \theta) \partial t$, M times (batches) where $T_j \sim U[0, T]$
+ $L(\theta) = \mathbb{E}\left[\sum_j \frac{T}{M} l(\theta, T_j) \right] $
+  Finally, the SGD algorithm can be written as:
+  Update Rule: Sample times $t_{jk}$ of $T_j$:  $\theta_{k+1} = \theta_k - \alpha_k \frac{T}{M} \sum_{j=1}^M \nabla_\theta l(t_{jk}, \theta)$
+  

### Lecture 26.4 Physics Informed Regulaization: Solving PDEs
+ Solving one dimensional heat conductivity boundary value problem.
+ Two parts of loss function one comes from physics and other is from boundary (that is where we get data)

### Lecture 26.5 Physics Informed Regularization: Solving high dimension stochastic PDEs
+ In this case we have a random probabilistic term. So the idea is to input the data points with some distribution of probabilitic parameter and output the solution to the PDEs

### Lecture 26.6 Physics Informed Regularization: Future
+ It is going to stay
+ The idea is to build the physics inside Machine Learning!