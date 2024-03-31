library("caTools")
file_path <- file.path("D:", "Data_science", "Data science 2", "Udemy", "ML", "Machine Learning-A-Z-Codes-Datasets", "Machine Learning A-Z (Codes and Datasets)", "Part 2 - Regression", "Section 4 - Simple Linear Regression", "R", "Salary_Data.csv")

df  = read.csv(file_path)
df


set.seed(1233)
split = sample.split(df$Salary, SplitRatio = .75)
train = subset(df, split == TRUE)
test = subset(df, split == FALSE)
train
test


#fitting simple linear regression
linear = lm(formula =  Salary ~ YearsExperience,
            data =  train)
linear



#redict the test data
pred = predict(linear, newdata = test)
pred

#visualization the Traing set results 
install.packages("ggplot2")
library("ggplot2")

ggplot()+
  geom_point(aes(x = train$YearsExperience, y = train$Salary),
             colour = "blue") +
  geom_line(aes(x = train$YearsExperience, y = predict(linear, newdata =  train)),
            colour = "green") +
  ggtitle('salary vs expreience(training det') +
  xlab('yearExpreience') +
  ylab("salary")


#visualization the test set results 
install.packages("ggplot2")
library("ggplot2")

ggplot()+
  geom_point(aes(x = test$YearsExperience, y = test$Salary),
             colour = "blue") +
  geom_line(aes(x = train$YearsExperience, y = predict(linear, newdata =  train)),
            colour = "green") +
  ggtitle('salary vs expreience(test det') +
  xlab('yearExpreience') +
  ylab("salary")
