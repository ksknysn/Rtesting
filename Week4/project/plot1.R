NEI<-readRDS("./data/summarySCC_PM25.rds")
SCC<-readRDS("./data/Source_Classification_Code.rds")
p1<-tapply(NEI$Emissions, NEI$year, sum)
plot(names(p1), p1, xlab="year",ylab="total")
