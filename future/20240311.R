int1 <- 10
int1
#자료형 확인
mode(int1)
#변수로 입력받기
number <- scan()
10
20
30
40

number
sum(number)
mean(number)
#데이터프레임으로 입력하기
df2_1 <- read.csv("prac2_1.csv")
head(df2_1)
#cat 함수 사용
c <- 30
d <- 40
e <- c+d
print("a + b의 값은", e,"이다.") #오류: print에서는 한 가지 자료형만 가능  
cat("a + b의 값은", e,"이다.") #쉼표가 있어 70뒤 공백이 생김 


