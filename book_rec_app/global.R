library(shiny)
library(googlesheets4)
library(DT)
library(shinythemes)
library(stringr)

sheets_deauth()

books <- read_sheet("https://docs.google.com/spreadsheets/d/1bwDA91Ch6oTBViFq5jzjRA1jLIe2CfVf80KAF2uj08w/edit", 
                    sheet="Book recommendations")

# create review link
link = "https://docs.google.com/forms/d/e/1FAIpQLScEKT0LFl-T1wBKdZtXpukmZCZEL3T9-vb_DUpsa5acCkdTPA/viewform?usp=pp_url&entry.1963949976="
books$Review_title <- str_replace_all(books$Title, " ","+")
books$Review_link <- paste0(link, books$Review_title)

# turn book title into link
names(books)[names(books)=="Link? (Google Books/Goodreads preferred)"] <- "Link"
books$Title <- paste0("<a href='",books$Link,"'>",books$Title,"</a>")

names(books)[names(books)=="Review this book here! *"] <- "Review_link"
books["Review link"] <- paste0("<a href='",books$Review_link,"'>Click here to review this work!</a>")

# get columns for data frame
books <- books[c("Title", "Author","Medium","Form","Review link")]
books$Medium <- factor(c(books$Medium))
books$Form <- factor(c(books$Form))
