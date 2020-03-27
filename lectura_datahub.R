
library("jsonlite")

json_file <- 'https://datahub.io/core/covid-19/datapackage.json'
json_data <- fromJSON(paste(readLines(json_file), collapse=""))

# get list of all resources:
print(json_data$resources$name)

# print all tabular data(if exists any)
j<-1
data_list<-list()
for(i in 1:length(json_data$resources$datahub$type)){
  
  if(json_data$resources$datahub$type[i]=='derived/csv'){
    path_to_file = json_data$resources$path[i]
    data <- read.csv(url(path_to_file))
    print(data)
    data_list[[j]]<-data
    j<-j+1
  }
}

dthub<-data_list[[1]]
dthub_wide_pais<-data_list[[2]]
dthub_pais<-data_list[[3]]
dthub_global<-data_list[[4]]


rm(data, data_list,json_data, i ,j)
