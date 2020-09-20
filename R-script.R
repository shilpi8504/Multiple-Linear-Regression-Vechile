head(vehicle)
pairs(vehicle[3:5])
results <- lm(lc~Mileage+lh,vehicle)
results
summary(results)
results <- lm(lc~lh,vehicle)
results
summary(results)

Reduced <- lm(lc~lh,vehicle)
full <- lm(lc~Mileage+lh,vehicle)
anova(Reduced,full)
#prediction (default=95%,confidence)
predict(results,data.frame(lh=10),interval = 'confidence')
