data<-read.csv("F:/Downloads/Auto.csv")
data<-na.omit(data)

# 9)
# a)

class(data$mpg)
class(data$cylinders)
class(data$displacement)
class(data$horsepower)
class(data$weight)
class(data$acceleration)
class(data$year)
class(data$origin)
class(data$name)

summary(data)

data$horsepower<-as.numeric(data$horsepower)
data$origin<-as.factor(data$origin)
data$name<-as.factor(data$name)

data<-na.omit(data)

class(data$horsepower)
class(data$origin)
class(data$name)

summary(data)

# b)

sapply(data[1:7],range)

# c)

print(sapply(data[1:7], mean))
print(sapply(data[1:7], sd))

# d)

data2 <- data[-c(10:85),]

print(sapply(data2[,1:7], range))
print(sapply(data2[,1:7], mean))
print(sapply(data2[,1:7], sd))

# e)

heatmap(cor(as.matrix(data[1:7])))

pairs(data[1:7],)

cor(data[1:7])
