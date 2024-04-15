"""[중간고사]
패키지 설치, 라이브러리 불러오기
csv파일 불러올때 따움표 넣기 
is.na , !is.na 헷갈리지 않기
"""
library(dplyr)
process_1 <- read.csv("prac5_1.csv")
head(process_1,6)
chapteer5_2 <- process_1 %>% filter(kor>90)
process_6 <- read.csv("prac5_1.csv")
# 데이터요약하기
process_6 %>% summarise(n())
process_6 %>% summarise(n_distinct(ban))
process_6 %>% summarise(first(ban))
process_6 %>% summarise(last(ban))
process_6 %>% summarise(nth(kor, 7))
process_6 %>% summarise(sum(kor))
process_6 %>% summarise(mean(kor))
process_6 %>% summarise(median(kor))
process_6 %>% summarise(sd(kor))
process_6 %>% summarise(min(kor))
process_6 %>% summarise(max(kor))
# 데이터 그룹화하기 
process_7 <- read.csv("prac5_2.csv")
head(process_7, 6)
process_7 %>% group_by(ban) %>% 
    summarise(sum(kor))
process_7 %>% group_by(ban) %>% 
    summarise(mean(kor))
# 결측치 확인
missing_1 <- read.csv("prac6_1.csv")
head(missing_1)
chapter6_1 <- is.na(missing_1)
head(chapter6_1)
## 결측치 개수 확인
summary(missing_1$kor)
table(!is.na(missing_1))
complete.cases(missing_1)
na.omit(missing_1)
missing_1 %>% filter(!is.na(kor))
