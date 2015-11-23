#library(RJSONIO)

#ds1 <- fromJSON("data/yelp_academic_dataset_business.json", nullValue=NA, method="C")

#ds2 <- data.frame(ds1)

#head(ds2)

#Lines <- readLines("data/yelp_academic_dataset_review.json") #
#review <- as.data.frame(t(sapply(Lines, fromJSON)))

#rm('Lines')

#json.review <- fromJSON("data/yelp_academic_dataset_review.json", nullValue = NA  )


library(rjson)
library(plyr)

tr.review <- "data/yelp_academic_dataset_review.json"
con <- file(tr.review, "r")
input <- readLines(con, -1L)
close(con)
tr.review <- ldply(lapply(input, function(x) t(unlist(fromJSON(x)))))
save(tr.review, file= 'tr.review.rdata')

nrow(tr.review)

tr.review$text[100]


