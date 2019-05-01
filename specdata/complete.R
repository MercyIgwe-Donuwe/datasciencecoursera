complete<-function(directory, id = 1:332){
mydata<-list.files(directory, full.names = TRUE)
mon <- data.frame()
for (i in id){
  dat<- read.csv(mydata[i])
nobs <- sum(complete.cases(dat))
tmp <- data.frame(i, nobs)
mon <- rbind (mon, tmp)
}
colnames(mon) <- c("id", "nobs")
mon
}