# WharfToWharfR
R package for race data, Santa Cruz's Wharf to Wharf 

When data is updated in the data-raw directory, follow this sequence
- w2w2015 <- read.csv("data-raw/w2w2015.csv", stringsAsFactors=FALSE)
- save(w2w2015, file="data/w2w2015.rda")
