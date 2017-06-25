#
# Setting up personal website using 'blogdown'
# Following these instructions:
# https://apreshill.rbind.io/post/up-and-running-with-blogdown/
# 
library(tidyverse)
library(devtools)

# Install and load blogdown package
devtools::install_github("rstudio/blogdown")
library(blogdown)

# Install Hugo
install_hugo()  # blogdown::install_hugo()

# Install Hugo academic theme
install_theme("gcushen/hugo-academic", theme_example = TRUE, update_config = TRUE)

# Create a new site with the academic theme
blogdown::new_site(theme = "gcushen/hugo-academic", theme_example = TRUE)  # Throws an error that directory not empty?

# Preview website
blogdown::serve_site()
