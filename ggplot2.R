# 1

# 1) mtcars에서 자동차 모델과 mpg만 뽑고, forcats로 연비 순으로 정렬(fct_reorder)
# 2) ggplot2로 산점도 생성 후, X축 Y축 축이름 변경
# 3) 디테일 잡기: 점 색깔, 눈금 간격, 점 모양(21) 등

head(mtcars)

# install.packages("ggplot2")
library(ggplot2)
library(forcats)

?par

ggplot(data=mtcars, 
       aes(x=mpg, y=fct_reorder(rownames(mtcars), mpg, .desc=FALSE))) +
  geom_point(shape=21, color="coral", bg= "coral", size=2) +
  labs(title="Car Model vs. Fuel Consumption",
       x="Fuel Consumption (miles per gallon)",
       y="Car Model")



# 2

# 1) ggplot2패키지에 포함된 diamonds 데이터셋을 이용
# 2) 컷 등급별 다이아몬드 캐럿(무게)과 가격 간 산점도 생성
# 3) 추세선은 컷 등급별로 색상에 의해 구분
# facet_wrap(vars(컬럼이름K))

head(diamonds)
ggplot(data=diamonds, aes(x=carat, y=price))+
  geom_point(shape=20, color="gray", bg="gray")+
  geom_smooth(mapping=aes(color=cut, fill=cut))+
  labs(title="Diamond Price Distribution by Carat and Cut",
       x="carat", y="Price(dollars)")+
  facet_wrap(~cut, nrow =2)



# 3

# 1) StatSci 웹사이트 - 체리나무 데이터 (http://www.statsci.org/data/general/cherry.txt)
# 2) 데이터 프레임으로 저장
# 3) 버블차트

website <- "http://www.statsci.org/data/general/cherry.txt"
cherrytree <- read.table(website, header = TRUE)
cherrytree
ggplot(cherrytree, aes(x=Height, y=Diam))+
  geom_point(aes(size=Volume),shape=21, 
             color="black", bg="red", alpha=0.6)+
  labs(title="Cherry Trees",
       subtitle="Relationship between height and diameter of cherry trees",
       caption="Source: www.statsci.org")+
  theme(plot.title=element_text(face="bold")) +
  theme_test()


