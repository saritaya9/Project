# read input data
input_data = read.csv('C:/Users/as/Desktop/Aureus_Test/problem5_data.csv')
# remove missing values 
clean_data <- na.omit(input_data)
# use elbow method to get k value
set.seed(123)
k.max <- 15
elbow_k <- sapply(1:k.max, 
              function(k){kmeans(clean_data, k, nstart=50,iter.max = 15 )$tot.withinss})

plot(1:k.max, elbow_k,
     type="b", pch = 19, frame = FALSE, 
     xlab="Number of clusters K",
     ylab="Total within-clusters sum of squares")

# as k=6 looks good , we use it
kmeans_data <- kmeans(clean_data,6)

# merge cluster with input data
clustered_data <- cbind(clean_data,kmeans_data$cluster)

print(clustered_data)
