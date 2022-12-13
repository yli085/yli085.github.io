

# convert Tair ID into entrez ID
id_table <- read.table('/Users/yahui/Nutstore Files/Nutstore/work/MyProject/potato/genome/id_conversions/arabidopsis_id.txt', sep='\t', header=T, stringsAsFactors = F)
ol_genes_at_entrez <- id_table[match(ol_genes_at, id_table$TAIR.ID), ] # 619

ol_genes_at_entrez <- na.omit(ol_genes_at_entrez[[3]]) #325


