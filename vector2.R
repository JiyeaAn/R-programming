1 + 2
"+"(1,2)

c(1, 2, 3) + c(4, 5, 6)
c(1, 2, 3) * c(4, 5, 6)

c(10, 20, 30) / c(2, 4, 6)
c(10, 20, 30) %% c(3, 5, 7)
c(10, 20, 30) %/% c(3, 5, 7)

c(1, 2, 3) + c(4, 5, 6, 7, 8, 9)

c(1, 2, 3, 1, 2, 3) + c(4, 5, 6, 7, 8, 9)

c(1, 3, 5) + 10

c(1, 2, 3) + c(4, 5, 6, 7, 8)

#== 두 개 비교
#!= 같지 않다
#< , >, <=, >=
#!x X가 아니다.
#x | y : x or y , x & y : x and y
#isTRUE()

v <- pi
w <- 10/3

v == w
v != w
v > w
v < w
!(v > w)
(v == w) | (v < w)
(v == w) & (v < w)
isTRUE(v==w)

y <- c(0, 25, 50, 75, 100)
z <- c(50, 50, 50, 50, 50)
y == z
y != z
y > z
y < z

y == 50
y > 50

as.numeric(TRUE)
as.numeric(FALSE)

TRUE*TRUE
TRUE*FALSE
TRUE+TRUE

y <- c(0, 25, 50, 75, 100)
y

sum(y > 50)

any(-3:3 > 0)
all(-3:3 > 0)

#부동소수점수로 인한 같아야하는 수치가 서로 다르게 나오기도 함.
sqrt(2)^2 == 2
sqrt(2)^2 - 2
identical(sqrt(2)^2, 2)
#미세한 수치 조정
all.equal(sqrt(2)^2, 2)
isTRUE(all.equal(sqrt(2)^2, 3))

fruit <- c("Apple", "Banana", "Strawberry")
food <- c("pie", "Juice", "Cake")
paste(fruit, food)
paste(fruit, "Juice")




















































