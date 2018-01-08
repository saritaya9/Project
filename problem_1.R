library("stringr")
simpleCap <- function(x) { x <- gsub("[^[:alpha:]|[:space:]]", "", x)
                           x <- str_replace(gsub("\\s+", " ", str_trim(x)), "B", "b")
                           x <- tolower(x)
                           s <- strsplit(x, " ") 
                           sapply(s, function(x) {paste(toupper(substring(x, 1,1)), substring(x, 2),
                               sep="", collapse=" ")}) 
                         }

z <- "thiS IS %$@ Test STr#ing"
y <- simpleCap(z)
print(y)