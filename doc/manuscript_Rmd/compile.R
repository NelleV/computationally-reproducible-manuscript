library(rmarkdown)

rmarkdown::render("manuscript.Rmd", output_dir="../reports")

rmarkdown::render("index.Rmd", output_dir="../reports")
