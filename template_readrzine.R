library(rzine)
rmarkdown::draft(file = "index.Rmd", 
                 template = "readrzine", 
                 package = "rzine", 
                 create_dir = FALSE, 
                 edit = FALSE)
rmarkdown::render("index.Rmd", envir = new.env())
