---
title: Data subsetting
date: 2021-03-18
---

### content
To subset a dataframe in R:
- by rows
- by columns
- by cells

## subset by columns
**by select+contains**
select columns contain certain characters.

```
library(dplyr)
select(iris, contains("Sepal"))
```


