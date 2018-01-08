library('caroline')
input = read.table('C:/Users/as/Desktop/Aureus_Test/Input_Sample.txt',sep=',')
colnames(input) <- c('customer id','payment date','payment amount')
grouped <- groupBy(df=input,by='customer id',clmns=c('payment amount'),aggregation=c('sum'))
df_customer_id <- as.data.frame(unique(input$'customer id'))
output <- cbind(df_customer_id,grouped)
colnames(output) <- c('customer id','payment amount')
output_sorted <- output[order(-output$'payment amount'),]
k=2
output_sorted_k <- head(output_sorted,k)
print(output_sorted_k)