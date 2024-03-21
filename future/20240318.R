gugu <- seq(1,9)
gugu2<-gugu*2
gugu3<-gugu*3
gugu*4->gugu4
gugu*5->gugu5
gugu*6->gugu6
gugu*7->gugu7
gugu*8->gugu8
gugu*9->gugu9

a<-seq(10,1,by=-1)
a
b<-seq(100,1,by=-7)
b
#체크해두시라고
c<-seq(98,1,by=-7)
c

3+5
5-3
3*5
5/3
5%%3
5%/%3
a<-c(5,6,7)
b<-c(2,3,4)
a+b
a-b
a*b
a%%b
a%/%b
3^4
3**4
prod(3,4)
round(23.456,2)
ceiling(23.456)
floor(23.456)
trunc(23.456)
log(10)
sqrt(64)
max(1,4,7,9)
min(1,4,7,9)
sum(1,4,7,9)
a<-c(1,4,7,9)
mean(a)
abs(-3.4)
factorial(4)
str1<-"세종대왕과 집헌전 학자들"
nchar(str1)
str2<-"Hello World"
grepl("hello", str2)
grepl("Hello",str2)
str3<-"Korea is"
str4<-"the best"
str5<-"country"
paste(str3,str4,str5)
str6<-"korea"
toupper(str6)
str7<-"KOREA"
tolower(str7)
str8<-"Tomorrow is the mirror of today"
substring(str8,17,22)
substring(str8,17,)
#체크 잘해두세요
gsub("Tomorrow","Yesterday",str8) #실제 데이터값 변경 안됨

str9<-gsub("Tomorrow","Yesterday",str8)
#공백 주의, 제일 긴 단어 넓이 기준으로 맞춤
strsplit(str8," ") #체점때 알 수 있도록 

a<-5
b<-3
a>b
a<b

a>=b
a<=b

#주의
a==b
a!=b

a<-2
b<-0
!a
!b

a|b
a&b
c<- -1
!c






