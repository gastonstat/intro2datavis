
download.file(
  "https://www.cs.unm.edu/~williams/cs422/color-matching.html",
  "data/color-matching.txt")


dat <- read.csv("data/color-matching-cie.csv", header = FALSE,
                stringsAsFactors = FALSE)

head(dat)

plot.new()
plot.window(xlim = c(350, 750), ylim = c(-0.5, 3))
segments(350, 0, 750, 0, col = "gray80")
axis(side = 1, pos = -0.5, at = seq(350, 750, 50))
axis(side = 2, las = 1, pos = 350)
title("Color Matching Functions", 
      xlab = "wavelength (nanometers)",
      ylab = "")
#plot(dat[,1], dat[,2], col = "red", lwd = 2, type = "l")
lines(dat[,1], dat[,2], col = "red", lwd = 2, type = "l")
lines(dat[,1], dat[,3], col = "green", lwd = 2, type = "l")
lines(dat[,1], dat[,4], col = "blue", lwd = 2, type = "l")
