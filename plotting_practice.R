# Plotting Practice in R

#------------------------------------------------------------------------
# Basic Plots with generated sequence data
#------------------------------------------------------------------------
# Plotting two sine waves, one with a smaller X interval than the other
x_tenths <- seq(-pi, pi, 0.1)
x_hundredths <- seq(-pi, pi, 0.01)

plot(x_tenths, sin(x_tenths),
     main="One sine wave cycle with 63 data points",
     xlab="x (1/10 intervals)",
     ylab="sin(x)"
     )

plot(x_hundredths, sin(x_hundredths),
     main="One sine wave cycle with 629 data points",
     xlab="x (1/100 intervals)",
     ylab="sin(x)"
     )

# Change sine wave to line graph
plot(x_hundredths, sin(x_hundredths),
     main="One sine wave cycle",
     xlab="x",
     ylab="sin(x)",
     type="l",
     col="blue",
     lwd=3
     )

# Trig graph with multiple lines
plot(x_hundredths, sin(x_hundredths),
     main="Comparing sine and cosine",
     xlab="x",
     ylab="sin(x)",
     type="l",
     col="blue",
     lwd=3
     )
lines(x_hundredths, cos(x_hundredths),
      col="red",
      lwd=3)

# Add legend to trig graph with multiple lines
plot(x_hundredths, sin(x_hundredths),
     main="Comparing sine and cosine",
     xlab="x",
     ylab="sin(x)",
     type="l",
     col="blue",
     lwd=3
)
lines(x_hundredths, cos(x_hundredths), # Add cosine function
      col="red",
      lwd=3)
lines(x_hundredths, tan(x_hundredths), # Add tangent function
      col="green",
      lwd=3)
legend("topleft",
       c("sin(x)", "cos(x)", "tan(x)"),
       fill=c("blue", "red", "green"))

#------------------------------------------------------------------------
# Plots with imported data
#------------------------------------------------------------------------
# This data measures the eye span and diet of a sample of stalk-eyed flies (n=45)
stalkeyed_fly_eyespan <- read.csv("data/stalkeyed_fly_eyespan.csv")

# Plot the difference in eye span between cotton eaters and corn eaters
cotton_eaters <- subset(stalkeyed_fly_eyespan, Diet=="Cotton")
corn_eaters <- subset(stalkeyed_fly_eyespan, Diet=="Corn")

x_cotton_eaters <- seq(length(cotton_eaters$Eye.span))
plot(x_cotton_eaters, cotton_eaters$Eye.span,
     main="Difference in Stalk-eyed Fly Eye Span for Corn and Cotton Diets",
     ylab="Eye span (cm)",
     type="p",
     col="red"
     )
x_corn_eaters <- seq(length(corn_eaters$Eye.span))
lines(x_corn_eaters, corn_eaters$Eye.span,
      type="p",
      col="blue")
legend("bottomleft",
       c("Corn", "Cotton"),
       fill=c("blue", "red"),
       title="Diet")

