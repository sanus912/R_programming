pollutantmean <- function(directory, pollutant, id = 1:332) {
    file.names <- list.files(directory)
    file.numbers <- as.numeric(sub('\\.csv$','', file.names))
    selected.files <- na.omit(file.names[match(id, file.numbers)])
    selected.dfs <- lapply(file.path(directory,selected.files), read.csv)
    mean(unlist(sapply(selected.dfs, function(x) x[ ,pollutant])), na.rm=TRUE)
}