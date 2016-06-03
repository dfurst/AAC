pairwise<-function(InputSpreadsheet){
  dodaac<-read.xlsx(paste0("/Users/furstfamily/Documents/R/",sheetIndex = 1))
  
  niin.dodaac<-as.matrix(read.csv(InputSpreadsheet,class=character()))

  niin.max.row<-nrow(niin.dodaac)
  niin.max.col<-ncol(niin.dodaac)
  last.y<-1
  ##maybe use data frame
  output.pairwise<-matrix("")
  for(y in 1:niin.max.row){
    if(is.integer(niin.dodaac[y,1])) last.y<-y
    for(x in 4:niin.max.col){
      if(niin.dodaac[y,x]>"") output.pairwise<-rbind(output.pairwise,paste(niin.dodaac[last.y,1],",",niin.dodaac[y,x]))
    }
  }
  write.csv(output.pairwise,file="/Users/furstfamily/Documents/R/pairwise.csv",quote=FALSE)
}
pairwise("/Users/furstfamily/Documents/R/DODAAC-NIIN.csv")
