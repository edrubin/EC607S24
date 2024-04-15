# Problem set 1

**1.** (5 points) Take 15 minutes to think about (1) your research interests and (2) how you are doing. No screens. No paper. No nothing. Just sit somewhere (ideally not PLC) quietly and think.

*To submit:* Where and when did you complete this task?

**2.** (20 points) Write a function that uses OLS to estimate the **coefficients** of a linear regression model.

The function should

- accept two arguments: `y` and `X` (both matrices)
- output estimated coefficients

Your function should only use matrix operations (e.g., `%*%`) and basic summary statistics (e.g., `sum`). Do not use more complex functions.

*Hint:* The function named `function()` allows you to write a function. For example, 

```{r}
function(a,b) {
  a + b
}
```

**3.** (10 points) Write a second function (or amend your previous function) that estimates heteroskedasticity-robust standard errors for the coefficients in part **2.**

**4.** (5 points) Show that your function works using the `mtcars` dataset in `R`. Specifically: Use your function to regress `mpg` on an intercept, the number of cylinders (`cyl`), horsepower (`hp`), and weight `wt`.

Compare your results to those of `fixest::feols` (using heteroskedasticity-robust standard errors).

**5.** (10 points) What assumptions do your standard errors rely upon (to be approximately correct)?

