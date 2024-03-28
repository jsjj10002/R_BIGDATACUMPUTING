analy_2<-read.csv("prac4_1.csv")
head(analy_2)
#파생변수 만들기 
analy_2$sum<-analy_2$kor+analy_2$math+analy_2$eng
head(analy_2)

#패키지 설치 및 라이브러리 실행-시험때 반드시 작성해야함 
install.packages("dplyr")#쌍따움표 
library(dplyr)# 쌍따움표 없음 

process_1<-read.csv("prac5_1.csv")
head((process_1))

#filter()함수: 행을 추출
chapter5_1 <- filter(process_1, kor >90)
chapter5_1

chapter5_2<-process_1 %>% filter(kor>90) #이런 형태를 많이 씀 
chapter5_2

chapter5_7<-filter(process_1, math <=70)
chapter5_7

chapter5_8<-process_1 %>%filter(math<=70)
chapter5_8

chapter5_9<-filter(process_1, ban == 1)
chapter5_9

chapter5_10 <- process_1 %>% filter(ban==1)
chapter5_10

chapter5_11<-filter(process_1, ban!=1)
chapter5_11

chapter5_12<-process_1 %>% filter(ban!=1)
chapter5_12

chapter5_13<-filter(process_1, eng>=80 & eng<90)
chapter5_13

chapter5_14<-process_1%>% filter(eng>=80 & eng<90)
chapter5_14

#select() 함수: 열을 추출

process_2 <-read.csv("prac5_1.csv")
head(process_2)

chapter5_17 <- select(process_2, kor)
chapter5_17

chapter5_18 <- process_2%>% select(kor)
chapter5_18

chapter5_21 <- select(process_2, -kor)
chapter5_21

chapter5_22 <- process_2%>%select(-kor)
chapter5_22

#데이터 정렬하기
process_3<-read.csv("prac5_1.csv")
head(process_3)

chapter5_25 <- arrange(process_3, ban)
chapter5_25

chapter5_26 <- process_3%>%arrange(ban)
chapter5_26

#내림차순 
chapter5_29 <- arrange(process_3, desc(ban)) #= process_3, (-ban)
chapter5_29

chapter5_30 <- process_3%>%arrange(desc(ban))
chapter5_30

#데이터 변형하기 
process_4<-read.csv("prac5_1.csv")
head(process_4)

chapter5_32 <- mutate(process_4, sum = kor+math+eng)
chapter5_32

chapter5_33<-process_4%>%mutate(sum=kor+math+eng)
chapter5_33

process_5<-process_4
head(process_5)

chapter5_36<-mutate(process_5, pass = ifelse(kor+math+eng>=240, 
                                             "합격", "불합격"))
chapter5_36

#데이터 그룹화 하기 
process_7 <- read.csv("prac5_2.csv")
head(process_7)

group_by(process_7, ban)%>%summarise(sum(kor)) # tibble 구조- 보기 더 편함  

process_7 %>% group_by(ban) %>% summarise(sum(kor)) 

#데이터 결합(열)
process_8 <-read.csv("prac5_3.csv")
process_8

process_9 <- read.csv("prac5_4.csv")
process_9

chapter5_40 <- left_join(process_8,process_9, by = "name")
chapter5_40

#데이터 결합(행결합)
process_10 <- read.csv("prac5_5.csv")
process_10

process_11<- read.csv("prac5_6.csv")
process_11

chapter5_41 <- bind_rows(process_10, process_11) #by가 없음 , 변수가 일치
chapter5_41
