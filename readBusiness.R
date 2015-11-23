#library(RJSONIO)

#ds1 <- fromJSON("data/yelp_academic_dataset_business.json", nullValue=NA, method="C")

#ds2 <- data.frame(ds1)

#head(ds2)

#Lines <- readLines("data/yelp_academic_dataset_business.json") #
#business <- as.data.frame(t(sapply(Lines, fromJSON)))
#business <-- fromJSON("data/yelp_academic_dataset_business.json", collapse="")

#rm('Lines')


library(rjson)
library(plyr)

tr.business <- "data/yelp_academic_dataset_business.json"
con <- file(tr.business, "r")
input <- readLines(con, -1L)
close(con)
tr.business <- ldply(lapply(input, function(x) t(unlist(fromJSON(x)))))
save(tr.business, file= 'tr.business.rdata')

nrow(tr.business)
summary(tr.business$`attributes.Wi-Fi`)


