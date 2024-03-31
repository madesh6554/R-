x = c(1,2,3,4)
attr(x, "description") = "This ia a numberic vector example"
attributes(x)
numeric_vector = c(1,2,3,4)
character_vector = c("a", "b", "c")

list_example = list(numeric_vector, character_vector)
print(list)
class(list_example)
type(list_example)

library(help="datasets")
View(iris)
head(iris)
summary(iris)
attributes(iris)
dim(iris)




#Vector
A = c(1L,2,3,4,5,6,7,8)
B = c("Apple", "Banana", "Cherry", "Date", "Elderberry", "Fig","Grape", "Kiwi")
C = c(TRUE, FALSE, TRUE)
D = c(1+2i, 3i, 4-5i, -12+6i) 
E =  c(1L, 4L, 2L, 5L) 


#Double Vector
typeof(A)
class(A)

#Character Vector
typeof(B)
class(B)

#Logical Vector
typeof(C)
class(C)

#Complex Vector
typeof(D)
class(D)

#Integer Vector
typeof(E)
class(E)



# List with different types of objects
mixed_list <- list(A, B, C)
# Named list
named_list <- list(fruit = B, numbers = A)
# Accessing elements by index
first_element <- mixed_list[[1]]
second_element <- named_list$fruit
print(first_element)
print(second_element)
typeof(second_element_named)
# Accessing elements by name
second_element_named <- named_list[["fruit"]]
print(second_element_named)




# Creating a data frame
df <- data.frame(
  ID = c(1, 2, 3,4,5),
  Name = c("John", "Alice", "Bob", "Cally", "Dany"),
  Age = c(25, 30, 35, 23, 42)
)
View(df)
print(df)


summary(df)


# Accessing entire columns
names_column <- df$Name
ages_column <- df$Age
print(names_column)
print(ages_column)

# Accessing specific elements
name_of_first_person <- df$Name[1]
print(name_of_first_person)





#Matrices

Mat = matrix(c(1,2,4,6,7,8), nrow = 2, ncol = 3 ,byrow = TRUE)
print(Mat)
# Accessing specific elements
print(Mat[1,3])
# Get dimensions
print(dim(Mat))
# Setting row and column names
rownames(Mat) = c("row1", "row2")
colnames(Mat) = c("col1", "col2", "col3")
print(Mat)

#Addition of matrix 
Mat1 = matrix(c(9,8,7,10,6,3), nrow = 2,ncol = 3)
#Addition of matrix 
print(Mat + Mat1)
#Subtraction of matrix
print(Mat- Mat1)
#Multiplication two Matrix
print(Mat  * Mat1)
#Division of matrix
print(Mat/2)
# Transposing the matrix
transposed = t(Mat)
print(transposed)



# Creating a factor
gender <- factor(c("Male", "Female", "Male", "Female"))

# Accessing levels
levels(gender)

# Get number of levels
num_levels <- nlevels(gender)
print(num_levels)



# Creating a simple function
addition <- function(a, b) {
  return(a + b)
}

# Calling the function
result <- addition(5, 3)




#Function to generate Fibnoacci 
n = readline("Enter the number:")

fun = function(n) {
  series = numeric(n)
  series[1:2] = c(0,1)
  for ( i in 3:n) {
    series[i] = series[i-1] + series[i-2] 
  }
  return(series)
}
fun(n)





X = 120+121
print(X)
class(X)

x <- 5 + 3
class(x)

x <- 5 + 3
evaluated_result <- eval(x)
class(evaluated_result)



x <- expression(2 ^ 3) 
x 
eval(x)
class(x)


TRUE|FALSE

x <- 12
x > 5 & x < 15


linkedin <- c(16, 9, 13, 5, 2, 17, 14)
last <- tail(linkedin, 1)
last > 15 & last <= 20








linkedin <- c(16, 9, 13, 5, 2, 17, 14)
facebook <- c(17, 7, 5, 16, 8, 13, 14)
linkedin > 10 & facebook < 10

last < 5 | last > 10
linkedin >= 12 | facebook >= 12
x <- 5
y <- 7
!(!(x < 4) & !!!(y > 12))



ls = list(a= 10, b= 20, c= 30)
print(ls)

cat("First element of list:", ls[[1]], "\n")


x = 10:30
cat("First 10 values:", x[1:10], "\n")
cat("Without values present at index 1, 2 and 3: ", 
    x[-c(1, 2, 3)], "\n")




my_matrix <- matrix(1:9, nrow = 3)
subset <- my_matrix[2, 3]
print(subset)
subset_row <- my_matrix[2, ]  # Extracts the second row
print(subset_row)
subset_column <- my_matrix[, 3] # Extracts the third column
print(subset_column)



library(help="datasets")
data(AirPassengers)
View(AirPassengers)
head(AirPassengers)




data(mtcars)
print(mtcars)
View(mtcars)

my_df <- data.frame(x = 1:3, y = c('a', 'b', 'c'))
subset <- my_df[2, ]
print(my_df)
print(subset)


subset <- subset(my_df, x > 1) 
print(subset)

subset <- my_df[my_df$x > 1, ] 
print(subset)




data()



# Load the iris dataset
data(iris)

# Display the first few rows of the dataset
print("First few rows of the dataset:")
print(head(iris))

# Information about the dataset
print("\nInformation about the dataset:")
print(str(iris))

# Summary statistics of the dataset
print("\nSummary statistics of the dataset:")
print(summary(iris))

# Count of unique values in a column
print("\nCount of unique values in the 'Species' column:")
print(table(iris$Species))

# Filtering rows based on a condition
print("\nFiltering rows based on a condition (Sepal.Length > 5.0):")
print(iris[iris$Sepal.Length > 5.0, ])

# Grouping and aggregation
print("\nGrouping by species and calculating mean:")
print(aggregate(. ~ Species, data = iris, mean))

# Sorting values
print("\nSorting by 'Petal.Width' in descending order:")
print(iris[order(iris$Petal.Width, decreasing = TRUE), ])

# Dropping columns
print("\nDropping the 'Species' column:")
iris <- iris[, !(names(iris) %in% c("Species"))]
print(head(iris))

# Adding a new column
iris$Sepal.Ratio <- iris$Sepal.Length / iris$Sepal.Width
print("\nDataset with a new column 'Sepal.Ratio':")
print(head(iris))



?iris3





data()


?mtcars


require(graphics)
pairs(mtcars, main = "mtcars data", gap = 1/4)
coplot(mpg ~ disp | as.factor(cyl), data = mtcars,
       panel = panel.smooth, rows = 1)
## possibly more meaningful, e.g., for summary() or bivariate plots:
mtcars2 <- within(mtcars, {
  vs <- factor(vs, labels = c("V", "S"))
  am <- factor(am, labels = c("automatic", "manual"))
  cyl  <- ordered(cyl)
  gear <- ordered(gear)
  carb <- ordered(carb)
})
summary(mtcars2)

View(mtcars)
dim(mtcars)

colnames(mtcars)
rownames(mtcars)

summary(mtcars)

print("\nCount of unique values in the 'gear' column:")
print(table(mtcars$gear))

ncol(mtcars)
nrow(mtcars)
print(str(mtcars))


print("\nCount of unique values in the 'gear' column:")
print(table(mtcars$gear))
print(length(unique(mtcars$gear)))

null_values = sum(is.na(mtcars))
print(null_values)      

str(mtcars)










data()

install.packages("ggplot2")
data(women)
head(women)
sum(is.na(women))


colnames(women)
library(ggplot2)
#scatterplot:
ggplot(women, aes(x = height, y = weight)) +
  geom_point() +
  labs(title = "Scatter Plot of Women's Height vs. Weight",
       x = "Height (inches)", y = "Weight (lbs)")


#Lineplot
data(airquality)
ggplot(airquality, aes(x = Day, y = Ozone)) +
  geom_line() +
  labs(title = "Line Plot of Daily Ozone Levels",
       x = "Day", y = "Ozone (ppb)")


#Barplot
data(mtcars)
ggplot(mtcars, aes(x = factor(cyl))) +
  geom_bar() +
  labs(title = "Bar Plot of Car Counts by Number of Cylinders",
       x = "Number of Cylinders", y = "Count")



#Histogram
data(iris)
ggplot(iris, aes(x = Sepal.Length)) +
  geom_histogram(binwidth = 0.5, fill = "blue", color = "black") +
  labs(title = "Histogram of Sepal Lengths",
       x = "Sepal Length", y = "Frequency")


#Box Plot
data(ChickWeight)
ggplot(ChickWeight, aes(x = factor(Time), y = weight)) +
  geom_boxplot() +
  labs(title = "Box Plot of Chick Weights over Time",
       x = "Time", y = "Weight")


#Density Plot
data(faithful)
ggplot(faithful, aes(x = eruptions)) +
  geom_density(fill = "orange") +
  labs(title = "Density Plot of Old Faithful Eruption Times",
       x = "Eruption Time (minutes)", y = "Density")

