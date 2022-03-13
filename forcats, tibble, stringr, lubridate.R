# 1
heights <- c(179, 161, 165, 185, 158)
weights <- c(75, 72, 60, 100, 65)
bmi <- data.frame(bmi = round(weights/(heights/100)^2, 2))
bmi #(a)답
physical <- data.frame(weights, BMI)
physical
over25 <- physical[physical$BMI>25,]
over25 #(b)답

# 2
mtx <- matrix(1:12, nrow=3)
#mtx
rownames(mtx) <- letters[1:3]
colnames(mtx) <- letters[4:7]
mtx

# 3
changes <- list(c(3,5,7), c("A", "B", "C"))
changes
changes[[c(2,1)]] <- "Alpha"
changes

# 4
#(a) 답답
str(beaver1)
str(beaver2)
beaver1$id <- 1
head(beaver1)
beaver2$id <- 2
head(beaver2)
#(b) 답
beaver12 <- rbind(beaver1, beaver2)
beaver12
beaver12 <- beaver12[,c(5, 1:4)]
head(beaver12)
#(c) 답: beaver12에서 active상태(activ변수값이 1)인 비버들의 서브셋(subset)을 추출
subset(beaver12,beaver12$activ==1)

# 5
#(a) 답
grade <- factor(c("A", "B", "C", "D", "F"))
grade
# install.packages("forcats")
library(forcats)
fct_relevel(grade, "F", "A", "B", "C", "D")
#(b) 답
count <- c(11, 25, 30, 5, 2)
fct_reorder(grade, .x=count, .desc = TRUE)

# 6
library("tibble")
tibble(
  x = 1:5,
  y = 3,
  z = x ^ 2 + y
)

# 7
library(stringr)

sentences3 <- sentences[1:3]
sentences3

str_replace_all(sentences3, pattern = "(The|the)", replacement = "THE")

# 8
library(lubridate)
d1 <- mdy("January 1, 2030")
d1
d2 <- ymd("2030-Mar-21")
d2
d3 <- mdy(c("August 15 (2030)", "July 17 (2030)"))
d3
d4 <- dmy("7-Jun-2030")
d4
d5 <- mdy("12/30/30") # 2030년    12월    30일
d5

