corr <- function(directory, threshold = 0) {
    complete_table <- complete(directory)
    ids <- complete_table$id[complete_table$nobs > threshold]
    file.names <- list.files(directory)
    file.numbers <- as.numeric(sub('\\.csv$','', file.names))
    selected.files <- na.omit(file.names[match(ids, file.numbers)])
    selected.dfs <- lapply(file.path(directory,selected.files), read.csv)
    sapply(selected.dfs,function(x) cor(x$sulfate, x$nitrate, use="complete.obs"))
}