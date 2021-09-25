c(1,2,3,4,5)
c("A", "B", "C", "A", "B")
factor(c("A", "B", "C", "A", "B"))
matrix(1:12, 3, 4) #행렬
array(1:12, c(2,3,2)) #배열(3차원)

data.frame(product=c("A","B","C"),
           price=c(100, 200, 300))

#리스트: 가장 유연한 형태(각 원소에 들어가는 갯수 등이 달라도 됨)
list(x=c("A","B","C","A", "B"),
     y=matrix(1:12, 3, 4),
     z=data.frame(product=c("A","B","C"),
                  price=c(100, 200, 300)))
