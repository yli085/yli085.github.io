## multiple intersections
letter_ls <- readRDS("data/letter_list.rds")

# use reduce function to get the overlapping genes
library(purrr)
ol <- purrr::reduce(letter_ls, intersect)

# Or, use loop
ol_tempt <- intersect(letter_ls[[1]], letter_ls[[2]])
for (i in 3:length(letter_ls)) {
  ol_tempt <- intersect(ol_tempt, letter_ls[[i]])
}
