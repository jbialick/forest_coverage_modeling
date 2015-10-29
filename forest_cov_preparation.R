forest <- read.csv("C:\\Users\\jbialick\\Documents\\UCSD Data Mining Certificate\\Data Mining II\\Forest Cover\\forest_coverage_modeling\\forest_cov.data", header = FALSE)
colnames(forest) <- c(
    "Elevation"
    ,"Aspect"
    ,"Slope"
    ,"Horizontal_Distance_To_Hydrology"
    ,"Vertical_Distance_To_Hydrology"
    ,"Horizontal_Distance_To_Roadways"
    ,"Hillshade_9am"
    ,"Hillshade_Noon"
    ,"Hillshade_3pm"
    ,"Horizontal_Distance_To_Fire_Points"
    ,"Wilderness_Area_1"
    ,"Wilderness_Area_2"
    ,"Wilderness_Area_3"
    ,"Wilderness_Area_4"
    ,"Soil_Type_1"
    ,"Soil_Type_2"
    ,"Soil_Type_3"
    ,"Soil_Type_4"
    ,"Soil_Type_5"
    ,"Soil_Type_6"
    ,"Soil_Type_7"
    ,"Soil_Type_8"
    ,"Soil_Type_9"
    ,"Soil_Type_10"
    ,"Soil_Type_11"
    ,"Soil_Type_12"
    ,"Soil_Type_13"
    ,"Soil_Type_14"
    ,"Soil_Type_15"
    ,"Soil_Type_16"
    ,"Soil_Type_17"
    ,"Soil_Type_18"
    ,"Soil_Type_19"
    ,"Soil_Type_20"
    ,"Soil_Type_21"
    ,"Soil_Type_22"
    ,"Soil_Type_23"
    ,"Soil_Type_24"
    ,"Soil_Type_25"
    ,"Soil_Type_26"
    ,"Soil_Type_27"
    ,"Soil_Type_28"
    ,"Soil_Type_29"
    ,"Soil_Type_30"
    ,"Soil_Type_31"
    ,"Soil_Type_32"
    ,"Soil_Type_33"
    ,"Soil_Type_34"
    ,"Soil_Type_35"
    ,"Soil_Type_36"
    ,"Soil_Type_37"
    ,"Soil_Type_38"
    ,"Soil_Type_39"
    ,"Soil_Type_40"
    ,"Cover_Type"
    )

#---------------------------------------------------------------------
# Convert Binary Attributes to R Factor (WEKA will interpret as binary)
#---------------------------------------------------------------------

forest$Wilderness_Area_1 <- as.factor(forest$Wilderness_Area_1)
forest$Wilderness_Area_2 <- as.factor(forest$Wilderness_Area_2)
forest$Wilderness_Area_3 <- as.factor(forest$Wilderness_Area_3)
forest$Wilderness_Area_4 <- as.factor(forest$Wilderness_Area_4)
forest$Soil_Type_1 <- as.factor(forest$Soil_Type_1)
forest$Soil_Type_2 <- as.factor(forest$Soil_Type_2)
forest$Soil_Type_3 <- as.factor(forest$Soil_Type_3)
forest$Soil_Type_4 <- as.factor(forest$Soil_Type_4)
forest$Soil_Type_5 <- as.factor(forest$Soil_Type_5)
forest$Soil_Type_6 <- as.factor(forest$Soil_Type_6)
forest$Soil_Type_7 <- as.factor(forest$Soil_Type_7)
forest$Soil_Type_8 <- as.factor(forest$Soil_Type_8)
forest$Soil_Type_9 <- as.factor(forest$Soil_Type_9)
forest$Soil_Type_10 <- as.factor(forest$Soil_Type_10)
forest$Soil_Type_11 <- as.factor(forest$Soil_Type_11)
forest$Soil_Type_12 <- as.factor(forest$Soil_Type_12)
forest$Soil_Type_13 <- as.factor(forest$Soil_Type_13)
forest$Soil_Type_14 <- as.factor(forest$Soil_Type_14)
forest$Soil_Type_15 <- as.factor(forest$Soil_Type_15)
forest$Soil_Type_16 <- as.factor(forest$Soil_Type_16)
forest$Soil_Type_17 <- as.factor(forest$Soil_Type_17)
forest$Soil_Type_18 <- as.factor(forest$Soil_Type_18)
forest$Soil_Type_19 <- as.factor(forest$Soil_Type_19)
forest$Soil_Type_20 <- as.factor(forest$Soil_Type_20)
forest$Soil_Type_21 <- as.factor(forest$Soil_Type_21)
forest$Soil_Type_22 <- as.factor(forest$Soil_Type_22)
forest$Soil_Type_23 <- as.factor(forest$Soil_Type_23)
forest$Soil_Type_24 <- as.factor(forest$Soil_Type_24)
forest$Soil_Type_25 <- as.factor(forest$Soil_Type_25)
forest$Soil_Type_26 <- as.factor(forest$Soil_Type_26)
forest$Soil_Type_27 <- as.factor(forest$Soil_Type_27)
forest$Soil_Type_28 <- as.factor(forest$Soil_Type_28)
forest$Soil_Type_29 <- as.factor(forest$Soil_Type_29)
forest$Soil_Type_30 <- as.factor(forest$Soil_Type_30)
forest$Soil_Type_31 <- as.factor(forest$Soil_Type_31)
forest$Soil_Type_32 <- as.factor(forest$Soil_Type_32)
forest$Soil_Type_33 <- as.factor(forest$Soil_Type_33)
forest$Soil_Type_34 <- as.factor(forest$Soil_Type_34)
forest$Soil_Type_35 <- as.factor(forest$Soil_Type_35)
forest$Soil_Type_36 <- as.factor(forest$Soil_Type_36)
forest$Soil_Type_37 <- as.factor(forest$Soil_Type_37)
forest$Soil_Type_38 <- as.factor(forest$Soil_Type_38)
forest$Soil_Type_39 <- as.factor(forest$Soil_Type_39)
forest$Soil_Type_40 <- as.factor(forest$Soil_Type_40)
forest$Cover_Type <- as.factor(forest$Cover_Type)

#---------------------------------------------------------------------
# Correlation matrix
#---------------------------------------------------------------------

# library(corrplot)
# forest_cor <- cor(forest)
# corrplot(forest_cor, method = "color")

#---------------------------------------------------------------------
# Standardize numeric variables (scale to mean 0, stdev 1) 
#---------------------------------------------------------------------

#----- Test Standardization -----

# test <- scale(forest$Elevation)
# mean(forest$Elevation)
# sd(forest$Elevation)
# apply(test, 2, mean)
# apply(test, 2, sd)

forest$Elevation                          <- scale(forest$Elevation                          )
forest$Aspect                             <- scale(forest$Aspect                             )
forest$Slope                              <- scale(forest$Slope                              )
forest$Horizontal_Distance_To_Hydrology   <- scale(forest$Horizontal_Distance_To_Hydrology   )
forest$Vertical_Distance_To_Hydrology     <- scale(forest$Vertical_Distance_To_Hydrology     )
forest$Horizontal_Distance_To_Roadways    <- scale(forest$Horizontal_Distance_To_Roadways    )
forest$Hillshade_9am                      <- scale(forest$Hillshade_9am                      )
forest$Hillshade_Noon                     <- scale(forest$Hillshade_Noon                     )
forest$Hillshade_3pm                      <- scale(forest$Hillshade_3pm                      )
forest$Horizontal_Distance_To_Fire_Points <- scale(forest$Horizontal_Distance_To_Fire_Points )

#----- Test Standardization -----

# mean(forest$Hillshade_9am)
# sd(forest$Hillshade_9am)

#---------------------------------------------------------------------
# Create Train & Test Datasets
#---------------------------------------------------------------------

library(caret)

# Percent split for training (10%)
sample_size <- floor(0.1 * nrow(forest))

# Set seed and generate sampling row indices
set.seed(333)
train_index <- sample(seq_len(nrow(forest)), size = sample_size)

# Generate train & test sets
forest_train <- forest[train_index, ]
forest_test <- forest[-train_index, ]

# Reduce size of test data
forest_test <- forest_test[sample(nrow(forest_test),150000), ]

#---------------------------------------------------------------------
# Balance classes in Training dataset
# NOTE - CURRENTLY DOIGN THIS IN WEKA, HAVE NOT FIGURED OUT R METHOD
#---------------------------------------------------------------------

#library(DMwR)
# forest_train_bal <- SMOTE(Cover_Type~., forest_train, k=5, perc.over=200, perc.under=400)

#library(ROSE) --ONLY WORKS WITH 2 CLASS LEVELs....WTF
#forest_train_bal <- ROSE(Cover_Type~., data=forest_train, N=1000)

# counts1 <- table(forest_train$Cover_Type)
# counts2 <- table(forest_train_bal$Cover_Type)
# 
# par(mfrow=c(2,1))
# barplot(counts1)
# barplot(counts2)

#---------------------------------------------------------------------
# Write to .arff for WEKA
#---------------------------------------------------------------------
library(foreign)
write.arff(forest, file = "C:\\Users\\jbialick\\Documents\\UCSD Data Mining Certificate\\Data Mining II\\Forest Cover\\forest_cov.arff")
write.arff(forest_train, file = "C:\\Users\\jbialick\\Documents\\UCSD Data Mining Certificate\\Data Mining II\\Forest Cover\\forest_cov_train.arff")
write.arff(forest_test, file = "C:\\Users\\jbialick\\Documents\\UCSD Data Mining Certificate\\Data Mining II\\Forest Cover\\forest_cov_test.arff")




