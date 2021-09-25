num <- 0:30
num

prime <- c(2,3,5,7,11,13,17,19)
prime
prime[1]
prime[2]
prime[1:3]
prime[4:6]

prime[c(1,1,5,5)]
prime[c(1,3,5,7)]
prime[c(7,5,3,1)]


indices <- c(1,3,5,7)
prime[indices]

prime[-1]
prime[-1:-3]
prime[-(1:3)]

length(prime)
prime[1:(length(prime)-1)]
prime[-length(prime)]

prime <- c(2,4,5,7,11,14,17,18)
prime
prime[2] <- 3
prime
prime[c(6,8)] <- c(13,19)
prime

prime <- c(2,3,5,7,11,13,17,19)
prime
length(prime)
prime[9] <- 23
prime
prime[c(10,11)] <- c(29,31)
prime
prime[15] <- 47
prime

prime <- c(2,3,5,7,11,13,17,19)
prime < 10
prime[prime < 10 ]
prime %%2 == 0
prime[prime %%2 == 0]

seq_along(prime)
seq_along(prime) %% 2 == 0

prime[c(FALSE, TRUE)]
prime[c(FALSE, TRUE, TRUE)]

which()
which.max()
which.min()

rainfall <- c(21.6, 23.6, 45.8, 77.0, 102., 133.3,
              327.9, 348.0, 137.6, 49.3, 53.0, 24.9)
rainfall
rainfall > 100
which(rainfall > 100)
month.abb[which(rainfall > 100)]
which.max(rainfall)
month.name[which.max(rainfall)]
month.name[which.min(rainfall)]

rainfall
rainfall[rainfall > 100]
rainfall[which.max(rainfall)]

traffic.death <- c(842, 729, 786, 751, 844, 851, 702)
traffic.death
names(traffic.death) <- c("Mon","Tue","Wed","Thu","Fri","Sat","Sun")
traffic.death

traffic.death["Sat"]
traffic.death[c("Tue", "Thu", "Sun")]
weekend <- c("Fri","Sat","Sun")
traffic.death[weekend]


traffic.death > 800
traffic.death[traffic.death > 800]
names(traffic.death[traffic.death > 800])






















































