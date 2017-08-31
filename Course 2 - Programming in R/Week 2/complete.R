complete <- function(directory, id=1:332) {
    files <- list.files(directory, full.names = TRUE)
    dat <- data.frame()
    for (i in id) {
        tmp <- read.csv(files[i])
        tmp <- tmp[complete.cases(tmp),]
        dat <- rbind(dat, data.frame(id=i,nobs=length(tmp$ID)))
    }
    colnames(dat) <- c('id','nobs')
    dat
}