#!/usr/bin/env Rscript

args <- commandArgs(trailingOnly = TRUE)


res <- do.call(
    cbind,
    lapply(
        args,
        function (fn) 
            read.csv(fn)
    )
)

colnames(res) <- args

write.csv(
    res, 
    file = "merged_sc3_results.csv", 
    quote = F,
    row.names = F
)