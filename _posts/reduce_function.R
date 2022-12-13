## multiple intersections

# use reduce function to get the overlapping genes
library(purrr)
ol <- purrr::reduce(genes_ls, intersect)

# Or, use loop
ol_tempt <- intersect(genes_ls[[1]], genes_ls[[2]])
for (i in 3:length(top_var)) {
  ol_tempt <- intersect(ol_tempt, genes_ls[[i]])
}
