install.packages("multilinguer")
install.packages(c("stringr","hash","tau","Sejong","RSQLite","devtools"),type = "binary")
library(multilinguer)
install_jdk()

install.packages("remotes")

remotes::install_github("haven-jeon/KoNLP",
                        upgrade = "never",
                        INSTALL_opts = c("--no-multiarch"))
library(KoNLP)
useNIADic()
1
library(dplyr)

# 연설문에서 명사 추출하기

## 문제인 대통령 연설문 불러오기
raw_moon <- readLines("speech_moon.txt", encoding = "UTF-8")
head(raw_moon)

## 기본적인 전처리
library(stringr)
library(tidytext)

moon <- raw_moon %>% 
    str_replace_all("[^가-힣]"," ") %>% 
    str_squish() %>% 
    as_tibble()
moon

## 명사 기준 토큰화
word_noun <- moon %>% 
    unnest_tokens(input = value,
                  output = word,
                  token = extractNoun)
# 단어 빈도 구하기
word_noun <- word_noun %>% 
    count(word,sort = T) %>%  #단어 빈도구해 내림차수 정렬
    filter(str_count(word)>1) #두 글자 이상만 남기기

word_noun

# 막대 그래프 만들기
top20 <- word_noun %>%  #상위 20개 단어 추출
    head(20)

library(ggplot2) #막대 그래프 만들기 
ggplot(top20, aes(x = reorder(word, n), y = n))+
    geom_col()+
    coord_flip()+
    geom_text(aes(label = n), hjust = -0.3)+
    labs(x=NULL)

#워드 클라우드 만들기 
library(ggwordcloud)
ggplot(word_noun, aes(labe = word, size = n, col = n))+
    geom_text_wordcloud(seed = 1234)+
    scale_radius(limits = c(3, NA),
                 range = c(3,15))+
    scale_color_gradient(low = "#66aaf2", high = "#004EA1")+
    theme_minimal()
