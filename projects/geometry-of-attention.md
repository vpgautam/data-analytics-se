
### Attention Mechanism From Scratch
#### Matrix
It is a machine that acts on space rather than a space by itself. Columns are destinations and rows are detectors.

#### Dot Product
* Dot product measures alignment. Matrix multiplication is a structured way to compute several dot products.
* A row of a weight matrix can be understood as a feature detector. A weight matrix can be understood as a feature detector. When I compute $W$ dot $x$, I am evaluating how much the input points in the learned direction $w$ (row of $W$).

#### EigenVectors
* Most directions gets mixed together by matrix multiplication. Eigenvectors are the exceptional directions that do not get mixed (rotated away from itself).
* For a square matrix $A$, the eigenvector $v$ satisfies,
$$A \times v = \lambda \times v$$.
* It means $v$ stays on its own line under the transformation. It may get streched, shrunk or flipped but it does not get rotated away from itself. The eigenvalue $v$ is the scaling factor attached to the transformation.
* The eigenvalue already tells if the eigenvector is goining to get flipped (&ndash; sign), shrink ($<$ 1) or streched ($>$1).

#### Eigen Value Decomposition (EVD)

* Normal matrix are diagonalizable:
$$
\begin{align*}
    AA^* &= A^*A \\
    \text{Or more specifically for real symmetric matrix } \\ AA^T &= A^TA
\end{align*}
$$

* For a diagonalizable matrix $A$:
$$
\begin{equation}
    AS = S \Lambda \implies A = S\Lambda S^{-1} \nonumber
\end{equation}
$$

#### Spectral Theorem of Real Symmetric matrix
* All $\lambda_i \in \mathbb{R}$
* Eigenvectors can be chosen **orthonormal**, so $S$ is orthogonal: $S^{-1} = S^T$
$$
\begin{equation*}
    A = S \Lambda S^T = \sum_{i=1}^{n} \lambda_i s_i (s_i^Tx)
\end{equation*}
$$
##### The "Projection" Interpretation
* Each $P_i = s_i s_i^T$ is an **orthogonal projector** onto the 1-D eigenspace spanned by $s_i$: $Ax = \sum_i \lambda_i s_i (s_i^T x)$ 

#### An Alternate View of Real Symmetric Matrix
* Using Taylor's series expansion, any function (loss) can be written as: $f(x) \approx f(x_0) + \nabla f(x_0)^T (x - x_0) + \frac{1}{2} (x - x_0)^T H (x - x_0)$. 
* $x^T H x$ is the quadratic form built from the Hessian. 
* Since, Hessian is a real symmetric matrix. 
$$
\begin{align*}
x^T H x &=  \sum_i \lambda_i(s_i^Tx)^2 \\
&= \sum_i \lambda_i u_i^2 \\
\quad \text{Which is nothing but sum of independent parabolas each with curvature } \lambda_i.
\end{align*}
$$


