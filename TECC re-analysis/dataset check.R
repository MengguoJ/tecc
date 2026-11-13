d <- read.csv("df_225.csv")
d1 <- read.table("df_225.dat")

a <- as.matrix(d[, 1:21])
s <- a[, 1:7] + a[, 8:14] + a[, 15:21]           # sum across tablet, phone, computer
y <- ifelse(s == 3, 0, ifelse(s <= 5, 1, 2))     # 3 | 4-5 | 6+
f <- read.table("final_data.dat")
all(y == as.matrix(f[, 1:7]))                     # should print TRUE
table(y[, 7])                                     # create: 122, 70, 33

# predictors (e.g., age): standardized, -999 = missing
ok <- f[, 8] != -999
cor(f[ok, 8], d$age[ok])                          # should print 1
