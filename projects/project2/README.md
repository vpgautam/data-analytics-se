# Project 2 — Univariate Real Series Forecasting

**Status:** unlocked ✅

**Goal:** one-step-ahead forecasting on the classic **monthly airline passengers**
series (real trend + yearly seasonality).

**New concepts:** `MinMaxScaler` (fit on train only!), proper time-based
train/test split, and a head-to-head of `nn.RNN` vs `nn.LSTM` vs `nn.GRU`
(including the LSTM tuple-state gotcha `out, (h_n, c_n)`).

Start here: [`airline_passengers_rnn_lstm_gru.ipynb`](airline_passengers_rnn_lstm_gru.ipynb)
