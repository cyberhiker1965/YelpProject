library(jsonlite)
library(dplyr)
#library(tidyjson)

#ds1 <- fromJSON("data/yelp_academic_dataset_business.json", nullValue=NA, method="C")

#ds2 <- data.frame(ds1)

#head(ds2)

Lines <- readLines("data/yelp_academic_dataset_user.json") #
users <- as.data.frame(t(sapply(Lines, fromJSON)))

#users <- users [ c("user_id","fans","compliments")]

#rm('Lines')
#


#users <- jsonlite::fromJSON(txt = Lines, 
#                            nullValue = NA, simplifyDataFrame = TRUE, simplifyVector = TRUE, flatten = TRUE  )


#library(rjson)
#library(plyr)

#tr.user <- "data/yelp_academic_dataset_user.json"
#con <- file(tr.user, "r")
#input <- readLines(con, -1L)
#close(con)
#rm("con")
#tr.user <- ldply(lapply(input, function(x) t(unlist(fromJSON(x)))))
save(tr.user, file= 'tr.user.rdata')

