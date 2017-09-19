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


--- type:NormalExercise lang:r xp:100 skills:1 key:e8ba8a36bf
## Sandbox 1

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
# Code from https://mxnet.incubator.apache.org/tutorials/r/fiveMinutesNeuralNetwork.html

require(mlbench)
require(mxnet)

data(Sonar, package="mlbench")

Sonar[,61] = as.numeric(Sonar[,61])-1
train.ind = c(1:50, 100:150)
train.x = data.matrix(Sonar[train.ind, 1:60])
train.y = Sonar[train.ind, 61]
test.x = data.matrix(Sonar[-train.ind, 1:60])
test.y = Sonar[-train.ind, 61]

mx.set.seed(0)
model <- mx.mlp(train.x, train.y, hidden_node=10, out_node=2, out_activation="softmax",
                num.round=20, array.batch.size=15, learning.rate=0.07, momentum=0.9,
                eval.metric=mx.metric.accuracy)

graph.viz(model$symbol)

preds = predict(model, test.x)

pred.label = max.col(t(preds)) -1
table(pred.label, test.y)
```

*** =solution
```{r}

```

*** =sct
```{r}

```
