 data<-read.csv('1950-2017_actual_tornadoes.csv')
 
 pacman::p_load(pacman, dplyr)#load libraries
 
 states<-c("AK","AL","AR","AS","AZ","CA","CO","CT","DC","DE","FL", "GA","GU","HI","IA","ID","IL","IN","KS","KY","LA","MA","MD","ME","MI","MN","MO","MS","MT","NC","ND","NE","NH","NJ","NM", "NV",
   "NY","OH","OK","OR","PA","PR","RI","SC","SD","TN","TX","UT","VA","VI","VT","WA","WI","WV", "WY")
 
 summary<-data%>%
   group_by(yr,st)%>%
   summarise(
     Count = n(),
     Injury = sum(inj),
     Fatality = sum(fat),
     Loss = sum(loss))

 missing<-data.frame()
 #select years to sample and write to csv
 for(i in 2000:2017){
   temp = data.frame(summary[which(summary$yr==i),])
   st<-c(setdiff(states, temp$st))
   yr<-i
   Count<-0
   Injury<-0
   Fatality<-0
   Loss<-0
   missing<-data.frame(st,yr,Count,Injury,Loss, Fatality)
   
   temp<-rbind(temp,missing)
   #toString(temp$st)
   temp<-temp[order(as.character(temp$st)),]
    
    print(paste0(i,": ",nrow(temp)))
    temp2 =data[which(data$yr==i),]
    write.csv(temp, paste0(getwd(),"/years/",i,'.csv'))
    #write.csv(temp2, paste0("C:/processing-3.3.7/Class Assignments/Assignment 8/graph/data/loc/",i,'.csv'))
    
  }
 