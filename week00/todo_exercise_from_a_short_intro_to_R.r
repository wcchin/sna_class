
10^2 + 36

(2015-2007)/(2015-1988)*100

a = 4
a
a * 5
a = a + 10
a

a

#rm(list=ls())
rm(a)

a

now = 2015
freshman = 2007
birth = 1988

(now-freshman)/(now-birth)*100

b = c(3,4,5)
b

mean(x=b)

c = c(4,5,8,11)
sum(c)

rnorm(10)

x = rnorm(100)
plot(x)

source("firstscript.R")
source("firstscript.R")
source("firstscript.R")
source("firstscript.R")
source("firstscript.R")

help(rnorm)

example(rnorm)

help.start()

help(sqrt)

vec1 = c(1,4,6,8,10)
vec1
vec1[5]
vec1[3] = 12
vec1
vec2 = seq(from=0, to=1, by=0.25)
vec2
sum(vec1)
vec1 + vec2

mat=matrix(data=c(9,2,3,4,5,6), ncol=3)
mat

P = seq(from=31, to=60, by=1)
Q = matrix(data=P, ncol=5)
Q

mat[1,2]
mat[2,]
mean(mat)

t = data.frame(x = c(11,12,14), y=c(19,20,21), z=c(10,9,7))
t
mean(t$z)
mean(t[["z"]])

x1 = rnorm(100)
x2 = rnorm(100)
x3 = rnorm(100)
t = data.frame(a=x1,b=x1+x2,c=x1+x2+x3)
plot(t)
sd(t[["a"]])
sd(t[["b"]])
sd(t[["c"]])

plot(t$a, type="l", ylim=range(t),lwd=3, col=rgb(1,0,0,0.3))
lines(t$b, type="s", lwd=2,col=rgb(0.3,0.4,0.3,0.9))
points(t$c, pch=20, cex=4,col=rgb(0,0,1,0.3))

d2 = read.table(file="tst1.txt",header=TRUE)
#d2
d3 = d2
c3 = d2[['g']]
c3
c4 = c3* 5
c4
d3[['g']] = c4
d3
write.table(d3, file="tst2.txt",row.names=FALSE)

sqrt(c(rnorm(100)))

max(c(rnorm(100)))

date1=strptime( c("20150923","20141205", "20160115"),format="%Y%m%d")
presents = c(3,4,5)

date1
presents
plot(date1, presents)

w = 3
if ( w<5 ){
    d=2
} else {
    d = 10
}
d

a = c(1,2,3,4)
b = c(5,6,7,8)
f = a[b==5 | b==8]
f

h = seq(from=1, to=8)
s = c()
for(i in 2:10) {
    s[i] = h[i] * 10
}
s

avector = seq(from=1, to=100, by=1)
bvector = c()
for (j in 1:length(avector)){
    i = avector[j]
    if (i < 5){
        bvector[j] = i*10
    } else {
        if (i > 90) {
            bvector[j] = i*10
        } else {
            bvector[j] = i*0.1
        }
    }
}
bvector

functiontest = function(avector) {
    bvector = c()
    for (j in 1:length(avector)){
        i = avector[j]
        if (i < 5){
            bvector[j] = i*10
        } else {
            if (i > 90) {
                bvector[j] = i*10
            } else {
                bvector[j] = i*0.1
            }
        }
    }
    return(bvector)
}
avector = seq(from=1, to=120, by=1)
functiontest(avector)

for (i in 5:10){
    print(i)
}


