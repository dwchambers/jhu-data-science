corr <- function(directory, threshold = 0) {
    dat <- complete(directory)
    dat <- dat[dat$nobs >= threshold,]
    correl <- vector()
    files <- list.files(directory, full.names =TRUE)
    for (i in dat$id) {
        tmp <- read.csv(files[i])
        tmp <- tmp[complete.cases(tmp),]
        correl <- append(correl, cor(tmp$sulfate,tmp$nitrate))
    }
    correl
}