library(rmarkdown)

rmarkdown::render("manuscript.Rmd")

rmarkdown::render("index.Rmd", output_dir="../reports")
