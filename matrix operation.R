mtx <- matrix(1:6, 2, 3)
mtx
mtx + 1
mtx - 1
mtx * 2
mtx / 2


a <- matrix(1:6, 2, 3)
b <- matrix(6:1, 2, 3)
a
b
a + b
a - b
a * b
a / b

c <- matrix(6:1, 3, 2)
c
a
a + c

# %*% 수학에서 이야기하는 행렬곱(행렬곱셉을 하고자 하는 조건을 만족해야함)
a <- matrix(1:6, 2, 3)
a
b <- matrix(1:6, 3, 2)
b
a %*% b
c <- matrix(1:6, 2, 3)
c
a %*% c

mtx <- matrix(1:6, 2, 3)
mtx
mtx %*% 1:3
mtx %*% 1:2
1:2 %*% mtx


mtx <- matrix(1:6, 2, 3)
mtx

mtx + 1:3

mtx
rowSums(mtx) #합
colSums(mtx)
rowMeans(mtx) #평균
colMeans(mtx)


mtx
t(mtx) #전치행렬

1:5
t(1:5)

mtx
mtx[2,]
t(mtx[2,])















