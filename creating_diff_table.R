# creating a DB to play with for learning SQL

#install.packages("lubridate")
#install.packages("tidyr")
#install.packages("dplyr")

library(lubridate)
library(dplyr)

Sale_data <- as.data.frame(matrix(data = NA,ncol = 20,nrow = 1000000))

colnames(Sale_data)[1:8] <- c("CRM_Ref","CUST_ID","quotation_date","Agreement_date","contract_start_date","contract_end_date","contract_type","Cust_contract_num")


resultdf <- as.data.frame(matrix(data = NA,nrow = 10000,ncol = 4))
colnames(resultdf) <- c("skill","luck","righplacerighttime","Pure hard Work")
mean_population <- c(rep(50,17),rep(49,17),rep(48,13),rep(53,2),rep(48,2),51,52,46.47)
stddev_population <- c(rep(25,17),rep(24,17),rep(23,13),rep(22,2),rep(26,2))
thisluck <- c(rnorm(13,.80,0.05), rnorm(34,.90,0.05),rep(.999,6))


for (cnt in 1:10000) {
  idf <- as.data.frame(matrix(data=NA,nrow = 12000,ncol = 3))
  set.seed(cnt)
  luck <- as.data.frame(abs(rnorm(15000,mean = sample(mean_population,1), sd = sample(stddev_population,1))))
  luck  <- luck[luck$`abs(rnorm(15000, mean = sample(mean_population, 1), sd = sample(stddev_population, 1)))`<100,1]
  idf[,2]<- sample(luck,12000)
  rm(luck)
  set.seed(cnt)
  skill <- as.data.frame(abs(rnorm(15000,mean = sample(mean_population,1), sd = sample(stddev_population))))
  skill  <- skill[skill$`abs(rnorm(15000, mean = sample(mean_population, 1), sd = sample(stddev_population)))`<100,1]
  idf[,1] <- sample(skill,12000)
  idf[,3] <- sample(thisluck,12000,replace = TRUE)
  rm(skill)
  idf$final = (idf[,3]*idf[,1])+((1-idf[,3])*idf[,2])
  outdf <- idf[idf$final%in%head(sort(idf$final, decreasing=TRUE), 100),]
  resultdf[cnt,1] <- mean(outdf$V1)
  resultdf[cnt,2] <- mean(outdf$V2)
  resultdf[cnt,3] <- mean(idf$V3)
  resultdf[cnt,4] <- length(outdf[outdf$V3>0.9900,1])
  rm(outdf,idf)
}

sample(1:10,3,replace = TRUE)

