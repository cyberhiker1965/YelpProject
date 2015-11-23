# exploratory analysis of business data
load('tr.business.rdata')
# first let's specify the columns we want to keep

keep_columns = c(
                 "attributes.Ambience.romantic",                        
                 "attributes.Ambience.intimate"       , "attributes.Ambience.classy",                          
                 "attributes.Ambience.hipster"        , "attributes.Ambience.divey" ,                          
                 "attributes.Ambience.touristy"       , "attributes.Ambience.trendy",                          
                 "attributes.Ambience.upscale"        , "attributes.Ambience.casual"  )

businessdata <- tr.business[keep_columns]

summary(businessdata)

# subset to remove rows without any ambience value
businessdata.sub <- subset(businessdata, !is.na(attributes.Ambience.romantic) |                         
                             !is.na(attributes.Ambience.intimate) | !is.na(attributes.Ambience.classy) | 
                             !is.na(attributes.Ambience.hipster)  | !is.na(attributes.Ambience.divey)  |                          
                             !is.na(attributes.Ambience.touristy) | !is.na(attributes.Ambience.trendy) |                          
                             !is.na(attributes.Ambience.upscale)  | !is.na(attributes.Ambience.casual)   ) 

