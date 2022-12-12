library(purrr)
ol <- purrr::reduce(list, intersect)

# equivalent to a loop
ol_temp <- intersect(list[[1]], list[[2]])

for (i in 3:length(list)){
  ol_temp <- intersect(ol_temp, list[[i]])
}
ol <- ol_temp
