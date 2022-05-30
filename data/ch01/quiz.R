# Date: 2022-05-30
# Goal: Playing a bit with Bayes Rules quiz from chapter 1
#

library(tidyverse) # loading to much but was in hurry
library(readxl)

#### 1. Loading file ===================================================

# get path, to be adjusted
path <- "data/ch01/"

# list of file
list_of_quiz <- list.files(path, pattern = ".xls")

# get every xls in a tibble of tibbles
some_tibles <- tibble(file_name = list_of_quiz) |>
  mutate(file_names = map(list_of_quiz,
                             function(x){read_excel(file.path(path, x))}))
# unnested now
unnest_files <- unnest(some_tibles)


#### 2. quick functions to do the job ========================================
# three little functions to count points
# not great if x == NA
question_one <- function(x) {
  if (x == "a") {
    return(1)}
    else if (x == "b") {
      return(3) }
    else if ( x == "c") {
      return(2) }
    else
      return(NA)
}

question_two <- function(x) {
  if (x == "a") {
    return(1)}
    else if (x == "b") {
      return(3) }
    else if (x == "c") {
      return(1) }
    else
      return(NA)
  }
# three and four have same rules
question_three_four <- function(x) {
  if (x == "a") {
    return(3)}
  else if(x == "b") {
    return(1)}
  else return(NA)
  }

#### 3 A bit of cleaning =======================================================

# Remove xls template
quiz <- unnest_files[unnest_files$file_name != "0_quiz.xls",]

# count points per question
quiz$point[quiz$question == 1] <- question_one(quiz$answer[quiz$question == 1])
quiz$point[quiz$question == 2] <- question_two(quiz$answer[quiz$question == 2])
quiz$point[quiz$question == 3] <- question_three_four(quiz$answer[quiz$question == 3])
quiz$point[quiz$question == 4] <- question_three_four(quiz$answer[quiz$question == 4])

##### 4. Counting points per file_name =======================================
quiz |>
  group_by(file_name) |>
  summarize(sum_point = sum(point))

