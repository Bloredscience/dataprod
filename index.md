---

title       : My First
subtitle    : Slidify
author      : courserian
job         : moocer
framework   : io2012     # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : [bootstrap, quiz]      #{mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides

---

## slide2


Let's consider the Titanic dataset and try to answer some questions about the data using linear models:

Let's test the hypothesis by taking passengers age with survival first then with sex

H0: There is no relationship between the two variables 

H1: There is a relationship between the two variables

---

## slide3

library(datasets) 


```r
fit1=lm(Age ~ Survived, data=Titanic)
```

```
## Warning: using type = "numeric" with a factor response will be ignored
## Warning: - not meaningful for factors
```

```r
summary(fit1)
```

```
## Warning: ^ not meaningful for factors
```

```
## 
## Call:
## lm(formula = Age ~ Survived, data = Titanic)
## 
## Residuals:
```

```
## Error: factors are not allowed
```

---

## slide4


```r
fit2=lm(Age ~ Sex, data=Titanic)
```

```
## Warning: using type = "numeric" with a factor response will be ignored
## Warning: - not meaningful for factors
```

```r
summary(fit2)
```

```
## Warning: ^ not meaningful for factors
```

```
## 
## Call:
## lm(formula = Age ~ Sex, data = Titanic)
## 
## Residuals:
```

```
## Error: factors are not allowed
```

--- &radio

## slide5

## Question

 
 Based on the output do you accept/reject the null hypothesis in both the cases? 
 
 1. accept
 2. reject
 3. _can't decide_
 4. none
