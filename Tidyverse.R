# 1

## install.packages("nycflights13")
library(nycflights13)
head(flights)

library(dplyr)

?nycflights13::flights
str(nycflights13::flights)

## 1) 쓸 변수만 따로 빼서 작업(복잡하니까) V
## 2) 도착지 공항별이니까, 지연 시간 계산 기준: arr_delay V
## 3) group_by V
## 4) summarise로 평균과 빈도 계산해서 넣기 V
## 5) 기준으로 필터 작업과 정렬 V
flights2 <- select(flights, dest, distance, arr_delay)
flights2
flights2.group <- group_by(flights2, dest) %>%
                  summarise(count = n(),
                            dist=mean(distance, na.rm=TRUE), 
                            delay=mean(arr_delay, na.rm=TRUE))
flights2.group
## 도착지의 출현 빈도 50번 이상으로 제한, 지연시간 상위 10개 도착지로 제한
flights3 <- filter(flights2.group, count>=50)
flights3.top <- arrange(flights3, desc(delay)) %>% head(10)
flights3.top # 답안



# 2

tbl1 <- tibble(name="Oliver", age=25)
tbl2 <- tibble(name=c("Oliver", "Emma"), sex=c("Male", "Female"))
tbl3 <- tibble(name="Emma", grade="A")
lst <- list(age=tbl1, gender=tbl2, grade=tbl3)
lst
## install.packages("purrr")
## purrr 패키지 사용
library(purrr)

## (a) 데이터프레임을 학생 이름을 기준으로 풀조인
## (b) 풀조인 과정을 단계별로 보여주시오.

lst %>% 
  reduce(full_join, by = "name")



# 3

## tidyr 패키지에 포함된 relig_income 데이터셋
## 종교(religion), 소득(income), 빈도(count)의 세 변수로 구성된 다음과 같은 롱포맷 데이터셋을 생성
## tidyr 패키지의 pivot_longer() 함수 사용

library(tidyr)
relig_income

long_format <- pivot_longer(data=relig_income, 
                            cols=-religion, 
                            names_to = 'income', 
                            values_to = 'count')
long_format

# 4

## tidyr 패키지에 포함된 table4b 데이터셋과 table2 데이터셋
table4b
table2

## (a)
table4b %>% 
  pivot_longer(c(`1999`, `2000`), names_to = "year", values_to = "population")

## (b)
table2 %>%
  pivot_wider(names_from = type, values_from = count)



