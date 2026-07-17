(lecture03)=
# Lecture 3 - Discrete Random Variables

## Objectives
+ Model the result of an experiment with discrete outcomes using the concept of random variables.
+ Calculate the probability that the result of an experiment falls within a given set of possibilities.
+ Summarize the result of an experiment using the concepts of expectation and variance.
+ To develop intuition about the probability mass function.
+ To learn about the Binomial distribution.
+ To learn about the Poisson distribution.

### Unit 3.1 Random Variable Definition
+ Random variable is a mapping function from results of an experiment $\omega$ to real number line.$X: F(\Omega) \rightarrow \mathbb{R}$.

### Unit 3.2 Probability Mass Function (PMF)
+ Let $X$ be a *discrete random variable (drv)*, then *pmf* of $X$ : $P(X = x) \equiv$  probability that drv $X$ takes value $x$.$P(X=x) \equiv P(x)$
+ Properties of *pmf*:
  + Non-negativity i.e. $P(X) \geq 0$
  + Normalized i.e. $\sum_x P(x) = 1$
+ Functions of random variable i.e. $Y = g(X)$ has its own *pmf*. $P(Y = y) \equiv P(g(X) = y) \equiv \sum_{x \in g^{-1}(y)} P(x)$

### Unit 3.3 Expectation of a random variable
+ $\mathbb{E}[x] = \sum_x x \times p(x)$
+ Properties of expectation:
  + $\mathbb{E}[x + c] = \mathbb{E}[x] + c$
  + $\mathbb{E}[\lambda x] = \lambda \mathbb{E}[x]$

### Unit 3.4 Variance of a random variable
+ Definition of variance
$$
\begin{align}
\mathbb{V}[x] &= \mathbb{E} [x - (\mathbb{E}[x])^2] \\
&= \mathbb{E}[x^2] - (\mathbb{E}[x])^2
\end{align}
$$
+ Properties of variance
$$
\begin{align}
\mathbb{V}[x + c] &= \mathbb{V}[x] \\
\mathbb{V}[\lambda x] &= \lambda^2 \mathbb{V}[x]
\end{align}
$$

### Unit 3.5 Bernoulli Distribution
+ Models an experiment with binary outcomes.
+ $X \sim \text{Bernoulli}(\theta)$ $$
X = \begin{cases} 1 & \text{with probability } \theta \\ 0 & \text{with probability } 1-\theta \end{cases}
$$
+ $\mathbb{E}[X] = \theta$
+ $\mathbb{V}[X] = \theta (1 - \theta)$

### Unit 3.6 Categorical Distribution
+ Extension of Bernoulli distribution to mutiple discrete outcomes.
+ $X \sim \text{Categorical}(p_1, \cdots, p_k)$ is defined as $$
X = \begin{cases} c_1,& \text{with probability } p_1 \\ \vdots \\ c_k, & \text{with probability } p_k \end{cases}$$
such that $\sum_{i}p(c_i) = p_1 + \cdots + p_k = 1$