NEI<-readRDS("./data/summarySCC_PM25.rds")
SCC<-readRDS("./data/Source_Classification_Code.rds")
p2<-tapply(NEI[NEI$fips=="24510",4], NEI[NEI$fips=="24510",6], sum)
plot(names(p2), p2, xlab="year",ylab="total")
