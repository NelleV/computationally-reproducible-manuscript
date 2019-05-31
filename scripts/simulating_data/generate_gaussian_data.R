library(stats)

###############################################################################
# Set some options for the data generation
random_seed = 43
n_clusters = 3
n_samples = 300
dimensions = 2
output_dir = "results"

###############################################################################
# Now generate the data

# First, set random seed for reproducibility
set.seed(random_seed)

# Now generate the centroids of our data.
centroids = stats::runif(n_clusters * dimensions, min=-5, max=5)
dim(centroids) = c(n_clusters, dimensions)

# Now generate a set of labels
labels = sample(1:n_clusters, n_samples, replace=TRUE)
# And now sample data points
simulated_data = stats::rnorm(n_samples * dimensions, mean=centroids[labels, ]) 
dim(simulated_data) = c(n_samples, dimensions)

###############################################################################
# Finally, save the data
if(!dir.exists(output_dir)){
   dir.create(output_dir) 
}
write.table(labels, file.path(output_dir, "labels.csv"))
write.table(centroids, file.path(output_dir, "centroids.csv"))
write.table(simulated_data, file.path(output_dir, "data.csv"))
