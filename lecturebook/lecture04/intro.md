(lecture04)=
# Lecture 4 - Continuous Random Variables

## Objectives
+ Model the result of an experiment with continuous outcomes using the concept of continuous random variables.
+ Explain the mathematical concept of cumulative distribution function.
+ Explain the mathematical concept of probability density function.
+ Summarize the result of a continuous-outcome experiment using the concepts of expectation and variance.
+ Identify the Uniform and the Gaussian distributions.

### Unit 4.1
+ Continous Random Variable: $X: F(\Omega) \rightarrow \mathbb{R}$

### Unit 4.2
+ Cumulative Distribution Function (CDF):$F(x) = P(X \leq x)$
+ Properties of CDF
  + Increasing function for $x$.
  + $F(-\infty) = 0$
  + $F(+\infty) = 1$
  + $p(a \leq x \leq b) = F(b) - F(a)$

### Unit 4.3
+ Probability Density Function (PDF) definition: 
$$
\begin{align}
f(x) &= \lim_{x \to 0} \frac{F(x + \Delta x) - F(x)}{\Delta x} \nonumber \\
&= \frac{\partial}{\partial x} F
\end{align}
$$

$$
\begin{align}
p(a \leq x \leq b) &= F(b) - F(a) \nonumber \\
&= \int_a^b f(x) dx
\end{align}
$$

+ Properties of PDF
  + Non-negativity: $f(x) \geq  0$
  + Normalization: $\int f(x) dx = 1$

+ PDF of a function of random variable
  + $Y = g(X)$
  + $f(y) = f(x=g^{-1}(y)) \frac{\partial}{\partial y} g^{-1}(y)$

### Unit 4.4
+ Expectation of CRV: $\mathbb{E}[x] = \int x f(x)dx$
+ Variance: same as DRV formula

### Unit 4.5
+ Uniform distribution $X \sim U([a,b])$
+ $f(x) = \frac{1}{b-a}$
+ $\mathbb{E}[x] = \frac{a+b}{2(b-a)}$


### Unit 4.6
+ The Gaussian distribution $X \sim \mathcal{N}(\mu, \sigma^2)$
+ $f(x) = \frac{1}{\sqrt{2\pi \sigma^2}} \exp{\frac{-(x - \mu)^2}{2\sigma^2}}$
+ Notation $\phi$ and $\Phi$ reseved to represnt standard normal PDF and CDF:
+ 