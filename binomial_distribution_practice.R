# Binomial Distribution Practice in R

#------------------------------------------------------------------------
# Basic binomial distributions
#------------------------------------------------------------------------
# Distribution of successes out of 50 coin flips using an unbiased coin
x <- seq(0, 50, by=1)
y <- dbinom(x, 50, 0.5)
plot(x, y,
     main="Binomial Distribution for 50 coin flips",
     xlab="Number of successes out of 50 coin flips",
     ylab="Probability"
     )

# Distribution of successes for a binary outcome with a 30% chance of success
# For example, a very biased coin or an animal offspring with a 30% chance of
# birthing one gender and a 70% of birthing another
x2 <- seq(0, 50, by=1)
y2 <- dbinom(x2, 75, 0.3)
plot(x2, y2,
     main="Binomial Distribution for 50 outcomes with 30% chance of success",
     xlab="Number of successes",
     ylab="Probability"
     )

# Plot a Bernoulli trial with 500 trials of 200 biased coin flips with a 73% chance of success
plot(seq(1:500), rbinom(500,200,0.73))


#------------------------------------------------------------------------
# Basic binomial distributions by hand (without Binomial functions)
#------------------------------------------------------------------------
# Coin flip successes
# 100 trials, 47 successes
n <- 100
X <- 47
p <- 0.5
q <- 1-p
n_choose_x = factorial(n) / (factorial(n-X) * factorial(X))
prob_successes <- n_choose_x * p^X * q^(n-X)

# The above as a function
binomial_distribution <- function(n, X, p) {
  n_choose_x = factorial(n) / (factorial(n-X) * factorial(X))
  prob_successes <- n_choose_x * p^X * q^(n-X)
  return(prob_successes)
}

# Cumulative Distribution Function for 1 to 50 successes in 50 total coin tosses
cdf <- c()
for (i in 1:50) {
  prob_of_i_successes <- binomial_distribution(50, i, 0.5) 
  cdf <- append(cdf, prob_of_i_successes, after=length(cdf))
}
plot(cdf)


