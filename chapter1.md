---
title       : Insert the chapter title here
description : Insert the chapter description here
attachments :
  slides_link : https://s3.amazonaws.com/assets.datacamp.com/course/teach/slides_example.pdf


--- type:NormalExercise lang:r xp:100 skills:1 key:d95eb2f52f
## Sandbox

Just some sand to dig in!

*** =instructions
- Do what you want!

*** =hint
No hints!

*** =pre_exercise_code
```{r}

```

*** =sample_code
```{r}
library(mxnet)
a <- mx.nd.ones(c(2,3), ctx = mx.cpu())
b <- a * 2 + 1
b
```

*** =solution
```{r}
library(mxnet)
a <- mx.nd.ones(c(2,3), ctx = mx.cpu())
b <- a * 2 + 1
b
```

*** =sct
```{r}

```
