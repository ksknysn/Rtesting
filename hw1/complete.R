complete <- function(directory, ids = 1:332) {
  liste <- data.frame(id = ids)
  n<-vector()
  for (i in (1:length(ids))){
    fa <- read.csv(paste("./hw1/",directory,"/",sprintf("%03d",ids[i]),".csv",sep=""))
    c<-dim(fa[!is.na(fa[,2]),])[1]
    n<-append(n,c)
  }
  liste$nobs <- n
  liste
}
