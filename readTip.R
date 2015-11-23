

library(rjson)
library(plyr)

tr.tip <- "data/yelp_academic_dataset_tip.json"
con <- file(tr.tip, "r")
input <- readLines(con, -1L)
close(con)
tr.tip <- ldply(lapply(input, function(x) t(unlist(fromJSON(x)))))
save(tr.tip, file= 'tr.tip.rdata')

nrow(tr.tip)
tr.tip$text[1000]
