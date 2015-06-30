best <- function(state, outcome) {
    directory <- "./data/outcome-of-care-measures.csv"
    file <- read.csv(directory, colClasses="character")
    data <- split(file,file$State)
    valid_outcomes <- c("heart attack", "heart failure", "pneumonia")
    if (!state %in% file$State) {
        stop("invalid state")
    } else if(!outcome %in% valid_outcomes) {
        stop("invalid outcome")
    } else {
        if(outcome == "heart attack") {
            num <- 11
        } else if(outcome == "heart failure") {
            num <- 17
        } else {
            num <- 23
        }
        data1 = data[[state]] #return data.frame
        data1[,num] <- as.numeric(data1[,num])
        data1 <- na.omit(data1)
        min <- min(data1[,num])
        hosp.list <- data1[,2][data1[,num] == min]
        if (length(hosp.list)>1)
        {
            sort(hosp.list)
        }
        return(hosp.list[1])
    }
}