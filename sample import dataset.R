#import dataset
df = read.csv("C:/Users/mades/Downloads/archive/online_retail.csv")
df
#find file size
object.size(df)
#find file dataframe Dimanition
dim(df)
#count unique values
a = table(unique(df$Country))
print(a)
