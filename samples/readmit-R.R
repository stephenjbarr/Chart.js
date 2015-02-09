x = c(0.2, 0.46, 0.74, 0.6, 0.53, 0.40)
n = length(x)
x.ub <- x + runif(n, max=0.1)
x.lb <- x - max(runif(n, max=0.1),0)

paste(round(x.lb, digits=3),collapse=",")


## do random cuts of each probability



for(i in 1:length(x)) {
    y <- runif(4)
    y <- y / sum(y)
    print(paste("[", paste(round(y * x[i],digits=3),  collapse=","), "]"), digits=3);
}
