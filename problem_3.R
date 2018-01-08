text_file_count <- function(x) 
                   { 
                     setwd(x)
                     all_file_list = list.files(pattern=".txt$",recursive=TRUE)
                     text_count = length(all_file_list)
                     return (text_count)
                    }
 
count <- text_file_count('C:/Users/as/Desktop/Sri Nivas Doc')
print(count)