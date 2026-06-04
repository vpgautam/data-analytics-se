(lecture02)=
# Lecture 2 - Basics of Probability Theory

## Objectives
+ Introduce the basic concepts of probability theory.
+ Demonstrate how to use probability theory to quantify uncertainty.
+ Develop intuition about the uncertainty of a coin toss experiment.
+ Experiment with the Monte Carlo method for estimating probabilities and develop some intuition about it.


## Important Concepts 
### Unit 2.3
+ **Principle of insufficient reasoning**: Best understood by example: You have a bag containing $6$ red balls and $4$ blue balls. What is probability $P(B \mid I) = \frac{\#\; blue\; balls}{\#\;total\;balls} = \frac{4}{10}$. This calculation based approach is called prinbciple of insufficient reasoning.
+ **Obvious Rule**: $P(A \mid I) + P( \neg A \mid I) = 1$. It can be extended to the *law of total probability*.

### Unit 2.4
+ **Product Rule**: $P(A,B \mid I) = P(A \mid B, I) \times P(B \mid I)$


### Unit 2.5
+ Assuming that $B_i$ is a disjoint event i.e. $$
+ **Sum Rule**: $P(A \mid I) = \sum_{i=1}^nP(A,B_i \mid I) = \sum_{i=1}^n P(A \mid B_i, I) \times P(B_i \mid I)$. Example what is the probability of drawing a red ball in second draw. 
$$
\begin{split}
P(R_2 \mid I) &= P(R_2,B1 \mid I) +  P(R_2,R1 \mid I) \\
&= P(R_2 \mid B_1, I) \times P(B_1 \mid I) +  P(R_2 \mid R_1, I) \times P(R_1 \mid I) \\ 
\end{split}
$$