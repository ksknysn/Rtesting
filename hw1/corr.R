corr <- function(directory, treshold=0) {
  fs1<-complete("specdata")
  fs2<-fs1[fs1[2]>treshold,]
  n<-vector()
  for (i in fs2$id){
    fb <- read.csv(paste("./hw1/specdata/",sprintf("%03d",i),".csv",sep=""))
    d<-fb[!is.na(fb[,2]) & !is.na(fb[,3]),]
    l<-cor(d[,2],d[,3])
    n<-append(n,l)
  }
  n
}
