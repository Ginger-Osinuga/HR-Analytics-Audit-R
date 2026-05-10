library(tidyverse)
hr_data <- read.csv("HRDataset_v14.csv")

# Summary Statistics
summary(hr_data$Salary)

# Department Analysis
hr_data %>% group_by(Department) %>% summarise(Avg_Salary = mean(Salary))

# Gender Pay Gap
hr_data %>% group_by(Sex) %>% summarise(Avg_Salary = mean(Salary), count = n())

# Plots
ggplot(hr_data, aes(x = PerformanceScore, y = Salary, fill = PerformanceScore)) + geom_boxplot() + theme_minimal()
ggplot(hr_data, aes(x = EngagementSurvey, y = Salary)) + geom_point(color = "steelblue") + geom_smooth(method = "lm") + theme_minimal()
