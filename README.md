# R4DS Bayes Rules! Book Club

Welcome to the R4DS Bayes Rules! Book Club!

We are working together to read [_Bayes Rules!_](https://www.bayesrulesbook.com/) by Alicia A. Johnson, Miles Q. Ott, and Mine Dogucu (Chapman and Hall/CRC, copyright 2022, [9780367255398](https://www.routledge.com/Bayes-Rules-An-Introduction-to-Applied-Bayesian-Modeling/Johnson-Ott-Dogucu/p/book/9780367255398?utm_source=website&utm_medium=shared_link&utm_campaign=B023819_jm1_5ll_7pp_d676_bayesrulesauthorshare)).
Join the [#book_club-bayes_rules](https://rfordatascience.slack.com/archives/C03EK4FUMQX) channel on the [R4DS Slack](https://r4ds.io/join) to participate.
As we read, we are producing [notes about the book](https://r4ds.io/bayes_rules).

## Meeting Schedule

If you would like to present, please see the sign-up sheet for your cohort (linked below, and pinned in the [#book_club-bayes_rules](https://rfordatascience.slack.com/archives/C03EK4FUMQX) channel on Slack)!

- [Cohort 1](https://docs.google.com/spreadsheets/d/18IDSOU2bfkD55kOB18qCB7Idbpiyp4_9qeWjkvE-Syc/edit?usp=sharing) (started 2022-06-02): [Thursdays, 13:00 CST/CDT](https://www.timeanddate.com/worldclock/converter.html?iso=20220602T180000&p1=24&p2=195&p3=1440) | [meeting videos](https://www.youtube.com/playlist?list=PL3x6DOfs2NGg3BSs7FW5_LPYfAyNft7I0)

<hr>


## How to Present

This repository is structured as a [{bookdown}](https://CRAN.R-project.org/package=bookdown) site.
To present, follow these instructions:

1. [Setup Github Locally](https://www.youtube.com/watch?v=hNUNPkoledI) (also see [_Happy Git and GitHub for the useR_](https://happygitwithr.com/github-acct.html))
2. Install {usethis} `install.packages("usethis")`
3. `usethis::create_from_github("r4ds/bookclub-bayes_rules")` (cleanly creates your own copy of this repository).
4. `usethis::pr_init("my-chapter")` (creates a branch for your work, to avoid confusion).
5. Edit the appropriate chapter file, if necessary. Use `##` to indicate new slides (new sections).
7. If you use any packages that are not already in the `DESCRIPTION`, add them. You can use `usethis::use_package("myCoolPackage")` to add them quickly!
8. Build the book! ctrl-shift-b (or command-shift-b) will render the full book, or ctrl-shift-k (command-shift-k) to render just your slide. Please do this to make sure it works before you push your changes up to the main repo!
9. Commit your changes (either through the command line or using Rstudio's Git tab).
10. `usethis::pr_push()` (pushes the changes up to github, and opens a "pull request" (PR) to let us know your work is ready).
11. (If we request changes, make them)
12. When your PR has been accepted ("merged"), `usethis::pr_finish()` to close out your branch and prepare your local repository for future work.

When your PR is checked into the main branch, the bookdown site will rebuild, adding your slides to [this site](https://r4ds.io/bayes_rules).
