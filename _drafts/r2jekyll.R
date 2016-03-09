#!/usr/bin/env Rscript
.libPaths("C:/Users/toomase/Documents/R/win-library/3.2")
library(knitr)

# Get the filename given as an argument in the shell.
args = commandArgs(TRUE)
filename = args[1]

# Check that it's a .Rmd file.
if(!grepl(".Rmd", filename)) {
    stop("You must specify a .Rmd file.")
}

# Knit and place in _posts.
dir = paste0("../_posts/", Sys.Date(), "-")
output = paste0(dir, sub('.Rmd', '.md', filename))
knit(filename, output, encoding = 'UTF-8')

# Copy .png files to the images directory.
fromdir = "{{ site.url }}/img"
todir = "../img"

pics = list.files(fromdir, ".png")
pics = sapply(pics, function(x) paste(fromdir, x, sep="/"))
file.copy(pics, todir)
unlink("{{ site.url }}", recursive=T)

pics_svg = list.files(fromdir, ".svg")
pics_svg = sapply(pics_svg, function(x) paste(fromdir, x, sep="/"))
file.copy(pics_svg, todir)
unlink("{{ site.url }}", recursive=T)