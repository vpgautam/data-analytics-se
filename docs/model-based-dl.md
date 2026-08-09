# Model-Based Deep Learning Notes
## AIM
 Fingertip tracking pipeline is purely model-based! While the eyetracking pipeline is purely data-driven. The idea of this notebook is to learn the marrying of model-based and data-driven approach so that the specific problems of both pipelines can be solved.
### Fingertip Tracking Pipeline
+ Echo separation from direct-path
+ Ringdown drift leading to continuous recalibration - Parametrize the time-domain signal. Like fit a Gaussian echo model and estimate the parameters of this model. 
+ Accuracy and roboustness issue - GDOP when at the edge (Perhaps cyclic mode)
+ Accuracy varies across area
+ Reliable tracking in a very small volume

### Eyetracking 
**I do not have to think if it is possible to have a fully functional eyetracking system with ultrasound! It is the marginal improvements that could be brought..small improvements that is all I have to work on.**
+ Generalization challenge - The trained Network breaks the moment there is even a slight displacement of the glass. On top of it, the ring-down drift is a known phenomena.
+ A closely realted idea is to learn shift-agnostic label i.e. the gaze direction (azimuth, elevation). How to achieve this.  
  Can we make the network learn with some physics-informed/ data-augmentation methods how to be shift-agnostic.
  For example, in fingertip tracking (the model-based) pipeline learns the exact coordinates. Keeping the sensor shield fixed and fingertip moving is very much same as keeping the eyes fixed and glasses moving.

---
## Section 2: Model-Based Versus Data-Driven Inference
+ **Inference:** Ability to conclude based on evidence and reasoning. Inference systems map an input variable $\mathcal{x} \in \mathcal{X}$ into a prediction of label variable $\mathcal{s} \in \mathcal{S}$, denoted by $\hat{\mathcal{s}}$. The inference rule, thus, can be expressed as:
$$
\begin{equation*}
    f: \mathcal{X} \mapsto \mathcal{S} \tag{1}
\end{equation*}
$$
We use $l(.)$ to denote a cost measure defined over $\mathcal{F} \times \mathcal{X} \times \mathcal{S}$. The fidelity of an inference mapping is measured by the *risk function*, also known as the **generalization error** is given by $\mathbb{E}_{x, s\sim p_{x,s}} \left[ l(f,x,s) \right] $. Where $p_{x,s}$ is the underlying statistical model relating the input and the label. 
+ The goal of both model-based and data-driven approach is to come-up with the inference rule $f(.)$ to minimize the risk for a given problem.