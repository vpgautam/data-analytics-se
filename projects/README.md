# RNN / GRU / LSTM — Learn-by-Doing Project Ladder

A 5-project ladder to build practical intuition for recurrent networks, from
simple to advanced. Each project adds **exactly one** new concept.

| # | Project | New concept you master |
|---|---------|------------------------|
| 1 | Sine Wave Forecasting | sequence shapes `(batch, seq_len, features)`, `out` vs `h_n`, last-timestep head |
| 2 | Univariate Real Series | normalization + leakage, time-based split, RNN vs LSTM vs GRU |
| 3 | Multivariate Forecasting | multiple input features, `Dataset`/`DataLoader` batching |
| 4 | Seq2Seq Multi-Step | encoder–decoder, teacher forcing, multi-horizon output |
| 5 | Attention / Capstone | attention, variable-length sequences, architecture benchmark |

## How we work
For each project the notebook is scaffolded with **`# 🛠️ TODO`** cells that you
implement yourself. Everything non-RNN (data, plotting, training skeleton) is
provided so you focus on the recurrent parts. Get stuck → show the error → we
debug and discuss → move on.

Start here: [`project1/sine_wave_forecasting.ipynb`](project1/sine_wave_forecasting.ipynb)
