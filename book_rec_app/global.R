library(shiny)
library(googlesheets4)
library(DT)
library(shinythemes)

books <- read_sheet("https://docs.google.com/spreadsheets/d/1bwDA91Ch6oTBViFq5jzjRA1jLIe2CfVf80KAF2uj08w/edit", 
                    sheet="Book recommendations")
names(books)[names(books)=="Link? (Google Books/Goodreads preferred)"] <- "Link"
books$Title <- paste0("<a href='",books$Link,"'>",books$Title,"</a>")
names(books)[names(books)=="Review this book here! *"] <- "Review_link"
books["Review link"] <- paste0("<a href='",books$Review_link,"'>Click here to review this work!</a>")
books <- books[c("Title", "Author","Medium","Form","Review link")]
books$Medium <- factor(c(books$Medium))
books$Form <- factor(c(books$Form))
