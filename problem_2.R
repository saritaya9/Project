#A is an one dimensional array, we are passing value of k via function
# it is returning A[i] + A[j] = k   
A = c(1,3,5,7,1)
complementry_k <- function(k)
                  { k_list = list()
                    for (i in 1:length(A)) 
                    {
                     for (j in 1:length(A))
                     { if ( j < i) 
                       { next }
                       else 
                         { t = (A[i] + A[j]) 
                           if ( t == k)
                           {  
                            found <- c(A[i],A[j])  
                            pair <- toString(found)
                            k_list[i] <- pair
                           }
                         }
                      }
                   }
                   return (k_list)
                  }
kd <- complementry_k(4)
print(kd)