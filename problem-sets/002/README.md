# Problem set 2

Due Friday, 10 May (2024) by 11:59 PM.

## Part 1: Contemplate

**1.1** (5 points) It's that time again—but now with *more* time! Take 30 minutes to think about (1) your research interests, (2) how you are doing, and (3) what matters to you. No screens. No paper. No nothing. Just sit somewhere (ideally not PLC) quietly and think.

*To submit:* Where and when did you complete this task?

## Part 2: Simulate

In this part, we are going to run a simulation that examines identification and inference in the presence of noisy/mismeasured data. 

We are going to focus on a simple linear regression: `y = ɑ + β x + Ɛ`, where `ɑ = 3` and `β = 4`.

The data will come from **five** different DGPs (described in more detail below):

- Homoskedastic disturbance
- Heteroskedastic error
- Classical measurement error in `x`
- Non-classical measurement error in `x`: heteroskedastic noise
- Non-classical measurement error in `x`: correlated with `x`

For each of the DGPs, you will

0. Describe and explain how OLS "should" perform based upon theory.
1. Use OLS to estimate the effect of x on y (`β`).
2. Use the "standard" IID-assuming standard error estimator (and the OLS estimates) to conduct a *t* test for `β = 4`. Record the *t* statistic and *p*-value.
3. Repeat the test but use the het.-robust standard error estimator.

with **two** different sample sizes: 30 and 200. For each sample size, you should try to run 1,000 iterations (10,000 would be even better).

**2.1** Let's start nice and "easy": IID, homoskedastic disturbance.

Here's the setup for this DGP:

```
x ~ Uniform(0, 10)
Ɛ ~ Uniform(-3, 3)
y = 3 + 4 * x + Ɛ
```

Make sure you answer questions 0–3 **and** run the simulation with sample sizes of 30 and 200.

**2.2** Everything stays the same as in **2.1**, but now we have *heteroskedastic* disturbances, *i.e.*,

```
x ~ Uniform(0, 10)
Ɛ ~ Uniform(-x, x)
y = 3 + 4 * x + Ɛ
```

**2.3** Time for some *classical* measurement error. 

Let's keep everything the same as our "simple" case (like **2.1**) *except* that we now have measurement error in `x`. In other words: While the effect of `x` on `y` is still `β = 4`, we no longer observe `x`. Instead we observe a noisy version of `x`, which we will call `w`.

"Classical" measurement error assumes that the noise (`η` below) is uncorrelated with the true (unobserved) value.

```
x ~ Uniform(0, 10)
Ɛ ~ Uniform(-3, 3)
η ~ Uniform(-3, 3)
w = x + η
y = 3 + 4 * x + Ɛ
```

**2.4** A slightly different version of classical measurement error: Now let the *measurement error* be heteroskedastic—specifiaclly larger variance in the "noise" for larger values of `x`. This DGP is basically **2.2** mixed with **2.3**:

```
x ~ Uniform(0, 10)
Ɛ ~ Uniform(-3, 3)
η ~ Uniform(-x, x)
w = x + η
y = 3 + 4 * x + Ɛ
```

**2.5** Finally, a version of *non-classical* measurement error: let the measurement error negatively correlate with the true value of `x`.

```
x ~ Uniform(0, 10)
Ɛ ~ Uniform(-3, 3)
η ~ -2 * x + Uniform(-x, x)
w = x + η
y = 3 + 4 * x + Ɛ
```

## Part 3: Summarize

**3.1** Time to summarize your simulation results. 

Plot the distribution of the **coefficients** (e.g., using `geom_density`) by DGP and sample size. To be clear: You should have a separate distribution plotted for each DGP and for each sample size (10 total distributions). You can do it on separate plots or on the sample plot—whatever you think is best.

**3.2** Repeat **3.1** but for the ***t* statistics** (instead of the coefficients). Now you want to separate by DGP, sample size, *and* standard-error estimator. You can mark the cutoff value using `geom_vline`.

**3.3** Make a nice table that also summarizes **3.1** and **3.2**. Also, include in the table the share of the *t* tests that reject the true value of `β`.

## Part 4: Reflect

**4.1** If measurement biases our OLS estimates, it must violate at least one of our assumptions. Which assumption(s) does it violate?

**4.2** Which, if any, of the issues does "more data" (*big data*—bigger sample size) help? Justify your answer with your simulation results and any theory/intuition that help.

**4.3** How reasonable are the assumptions behind "classical" measurement error? Briefly explain your answer.

## Part 5: Optional theory

To be clear: This section is optional.

**5.1** Analytically derive the expected value *or* probability limit of OLS in the two non-classical measurement error DGPs. Make sure to state any assumptions you made along the way.