pollutantmean <- function(directory, pollutant, id = 1:332){
  
    fa <- read.csv(paste("./specdata/",sprintf("%03d",id[1]),".csv",sep=""))
    if(length(id)>1){
      for (i in (id[2]:id[length(id)]))
      {
        fb <- read.csv(paste("./specdata/",sprintf("%03d",i),".csv",sep=""))
        fa<-rbind(fa,fb)
      }
      if(pollutant=="sulfate")
      {
        s<-fa[,2]
        s<-s[!is.na(s)]
        l<-length(s)
        s<-sum(s)
      }else{
        s<-fa[,3]
        s<-s[!is.na(s)]
        l<-length(s)
        s<-sum(s)
      }
    }
    else
    {
      if(pollutant=="sulfate")
      {
        s<-fa[,2]
        s<-s[!is.na(s)]
        l<-length(s)
        s<-sum(s)
      }else{
        s<-fa[,3]
        s<-s[!is.na(s)]
        l<-length(s)
        s<-sum(s)
      }
      
    }
    
    s/l
}

