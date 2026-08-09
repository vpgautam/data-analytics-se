# Project 4 — Sequence-to-Sequence Multi-Step Forecasting

**Status:** unlocked ✅

**Goal:** predict the next `HORIZON` steps at once from a window of history, and
understand *why* multi-step forecasting is harder than one-step.

**New concepts:** the three multi-horizon strategies (recursive / direct /
seq2seq), **encoder–decoder** architecture, **teacher forcing**, and
**exposure bias** — measured directly via a teacher-forcing-ratio sweep.

Start here: [`seq2seq_multistep_forecasting.ipynb`](seq2seq_multistep_forecasting.ipynb)
