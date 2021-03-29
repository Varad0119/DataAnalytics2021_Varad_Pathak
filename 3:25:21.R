#Import the dataset
wine_data <- read.table("http://archive.ics.uci.edu/ml/machine-learning-databases/wine/wine.data", sep = ",")

head(wine_data)

nrow(wine_data)

colnames(wine_data) <- c("Cvs", "Alcohol", 
                         "Malic_Acid", "Ash", "Alkalinity_of_Ash", 
                         "Magnesium", "Total_Phenols", "Flavanoids", "NonFlavanoid_Phenols",
                         "Proanthocyanins", "Color_Intensity", "Hue", "OD280/OD315_of_Diluted_Wine", 
                         "Proline")
head(wine_data)

str(wine_data)

?heatmap

heatmap(cor(wine_data),Rowv = NA, Colv = NA) 

?factor

cultivar_classes <- factor(wine_data$Cvs) 
cultivar_classes

?prcomp

?scale ##Scaling is very important!!!!!!

wine_data_PCA <- prcomp(scale(wine_data[,-1]))
wine_data_PCA

summary(wine_data_PCA)

plot(wine_data_PCA)









