feat: SGD and backprop algorithm, practice NN implement
1. Turning a deterministic optimization problem into stachastic using a categorical
random variable with uniform distribution and evaluating expectation wrt this variable.
2. Backprop algo uses autograd to compute local gradient of layer output $z_out$ wrt $z_{in}, J_W$ in the forward pass. While
the upstream gradient $v =  \partial L/ \partial z_out$ is computed during backpass.
   * Finally the two are combined together to evaluate $J_W = \del L/\del W = v \times \del z_out/\del W$ and $J_z_{in} = \del L/del z_in = v \times \del z_out/ \del z_in$.
   * $J_W$ is stored in W.grad, and used in `optim.step` by the optimizer to update weights. $J_z_{in}$ becomes the new v passed to previous layer.
