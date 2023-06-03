# Assignment: ASSIGNMENT Week 10
# Name: Mather, Brandon
# Date: 2022-08-11

library(ggplot2)
binary_data <- read.csv("binary-classifier-data.csv")
trinary_data <- read.csv("trinary-classifier-data.csv")
#5)
  #1)
ggplot(binary_data, aes(x= x, y= y, color= label)) + geom_point() + scale_color_gradient2(low="white", mid="yellow", high="red")
ggplot(trinary_data, aes(x= x, y= y, color= label)) + geom_point() + scale_color_gradient2(low="white", mid="yellow", high="red")

  #2)
binary <- binary_data[, c("x", "y")]
trinary <- trinary_data[, c("x", "y")]
set.seed(150)
binary_selection <- sample(1:nrow(binary), size=nrow(binary)*0.60, replace = FALSE)
binary_train <- binary_data[binary_selection,]
NROW(binary_train)
binary_test <- binary_data[-binary_selection,]
NROW(binary_test)
train_label_binary <- binary_data[binary_selection,1,drop=TRUE]
NROW(train_label_binary)
test_label_binary <- binary_data[-binary_selection,1,drop=TRUE]
NROW(test_label_binary)

set.seed(130)
trinary_selection <- sample(1:nrow(trinary), size=nrow(trinary)*0.60, replace = FALSE)
trinary_train <- trinary_data[trinary_selection,]
NROW(trinary_train)
trinary_test <- trinary_data[-trinary_selection,]
NROW(trinary_test)
train_label_trinary <- trinary_data[trinary_selection,1,drop=TRUE]
NROW(train_label_trinary)
test_label_trinary <- trinary_data[-trinary_selection,1,drop=TRUE]
NROW(test_label_trinary)

#4)
  #1)
clustering_data <- read.csv("clustering-data.csv")
ggplot(clustering_data, aes(x= x, y= y)) + geom_point()

  #2)
clust_nearest <- list(2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12)
clust_input = 1
seed = 1234
nc = 12
clustplot <- function(clustering_data, nc=12, seed)+clustss <- (nrow(clustering_data)-1)*sum(apply(clustering_data,2,var))
clustss <- (nrow(clustering_data)-1)*sum(apply(clustering_data,2,var))
for (clust_input in 2:nc) {
  set.seed(seed)
  clustss[clust_input] <-sum(kmeans(clustering_data, centers = clust_input)$withinss)}
plot(1:nc, clustss, type="b", xlab="number of clusters", ylab="Within groups sum of squares")
