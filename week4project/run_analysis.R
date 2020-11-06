X_train<-read.table("./data/UciHar/train/X_train.txt")
X_test<-read.table("./data/UciHar/test/X_test.txt")
y_train<-read.table("./data/UciHar/train/y_train.txt")
y_test<-read.table("./data/UciHar/test/y_test.txt")

#1. Merges the training and the test sets to create one data set.
X_data<-rbind(X_train, X_test)
y_data<-rbind(y_train, y_test)

#2. Extracts only the measurements on the mean and standard deviation for each measurement. 
features<-read.table("./data/UciHar/features.txt")
filteredFeatures<-features[grepl("mean|std",features[,2])==TRUE,]
X_data_filtered<-X_data[as.numeric(unlist(filteredFeatures[1]))]
names(X_data_filtered)<-filteredFeatures[,2]

#3. Uses descriptive activity names to name the activities in the data set
names(y_data)<-"AcitivityNumber"
Xy_Data<-cbind(X_data_filtered, y_data)
names(activity_labels)[1]<-"ActivityNumber"

#4. Appropriately labels the data set with descriptive variable names. 
merged_XY_data<-merge(Xy_Data, activity_labels)


