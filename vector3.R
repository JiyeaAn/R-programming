abs(-3:3)
log(1:5)
log(1:5,  base = exp(1))

log2(1:5)
log10(1:5)

exp(1:5)
y <- exp(1:5)
y
log(y)

factorial(1:5)
choose(5, 2)

sqrt(1:5)

options("digits")
pi
pi*100

signif(456.789, digits = 2)
signif(456.789, digits = 3)
signif(456.789, digits = 4)

round(456.789, digits = 2)
round(456.789)
round(sqrt(1:5), digits = 2)
round(456.789, digits = -1)

round(11.5)
round(12.5) #가장 가까은 짝수로 반올림
round(13.5)
round(-3.5)
round(-4.5)

floor(456.78)
floor(-456.78)

ceiling(456.78)
ceiling(-456.78)

trunc(456.78) #0에 가장 가까운 정수로
trunc(-456.78)

3/0
5 - Inf
Inf*Inf
Inf*(-Inf)

is.infinite()

1.8*10.^308 #컴퓨터가 인식할 수 있는 무한대의 마지노선선
is.infinite(1.8*10.^308)
305:310
is.infinite(10^(305:310))

Inf/Inf
#NaN 계산 결과를 만들 수 없음

NaN + 3
is.nan(NaN + 3)

#NA : Not Availabe

K <- NA
K
K + 5
sqrt(K)


K == NA
is.na(K)
is.na(K + 5)
is.na(NaN)

Z <- 1:5
Z
sum(Z)
prod(Z)
max(Z)
min(Z)

Z
mean(Z)
median(Z)
range(Z)
var(Z)
sd(Z)

w <- c(1,2,3,4,5,NA)
w
sum(w)
sum(w, na.rm = TRUE)
sum(na.omit(w))

v <- c(NA, NA, NA, NA, NA)
v
sum(v, na.rm = TRUE)
prod(v, na.rm = TRUE)
max(v, na.rm = TRUE)
min(v, na.rm = TRUE)

triffic.death <- c(842, 729, 786, 751, 844, 851, 702)

#cum : 누적
cumsum(triffic.death)
cumprod()
cummax()
cummin()

cumsum(c(3, 5, 1, NA, 2))

triffic.death
diff(triffic.death)
#뒤의 원소에서 앞에 원소를 뺀것: 전체 원소의 개수-1 (인접한 원소간의 계산)
diff(c(3, 5, 1, NA, 2))
diff(1:5, lag = 2)

union()
intersect()
setdiff()

p <- 1:10
q <- 6:15
union(p, q)
intersect(p, q)
setdiff(p, q)
setdiff(q, p)
setequal(p, q)
is.element(setdiff(p, q), p)
is.element(setdiff(p, q), q)




































































