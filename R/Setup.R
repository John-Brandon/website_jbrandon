#
# Setting up personal website using 'blogdown'
# Following these instructions:
# https://apreshill.rbind.io/post/up-and-running-with-blogdown/
# 
library(tidyverse)
library(devtools)
# install.packages("blogdown")
library(blogdown)

# Install/Update Hugo
# install_hugo()  # blogdown::install_hugo()
update_hugo()     # version 0.31.1

# Install Hugo academic theme
install_theme("gcushen/hugo-academic", theme_example = TRUE, update_config = TRUE)

# Create a new site with the academic theme
blogdown::new_site(theme = "gcushen/hugo-academic", theme_example = TRUE)  # Throws an error that directory not empty?

# Preview website
blogdown::serve_site()
