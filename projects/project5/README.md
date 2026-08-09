# Project 5 — Attention (Capstone)

**Status:** unlocked ✅

**Goal:** on an *echo* task engineered to break the fixed-vector bottleneck,
show that **attention wins decisively** over both the Direct baseline and a
vanilla encoder–decoder — the clear-advantage demonstration Project 4 lacked.

**New concepts:** dot-product attention (query / keys / values, score → softmax
→ context), interpretable attention-weight heatmaps, and the bridge from
attention-on-an-RNN to Transformers.

Start here: [`attention_capstone.ipynb`](attention_capstone.ipynb)

### Going Deeper into Attention
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


