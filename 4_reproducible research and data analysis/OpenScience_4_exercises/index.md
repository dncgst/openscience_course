---
title       : Open Science
subtitle    : Basic principles and best practices
author      : Dr. Domenico Giusti
job         : Paläoanthropologie,
              Senckenberg Centre for Human Evolution and Palaeoenvironment
              # & Eberhard Karls Universität Tübingen
framework   : io2012        # slide generation framework to use {io2012, html5slides, shower, dzslides, revealjs, impressjs, ...}
theme       : white         # theme to use for styling slide content {}
highlighter : highlight.js  # tool to use for syntax highlighting {highlight.js, prettify, highlight}
hitheme     : tomorrow      # style to use for syntax highlighting {tomorrow, github, zenburn, solarized-dark, ...}
widgets     : []            # widgets to include {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
logo        : UT_WBMW_Rot_RGB_01.png
biglogo     : UT_WBMW_Rot_RGB_01.png
license     : by-nc-sa
#github:
#  user: dncgst
#  repo: openscience_class
#  branch: "gh-pages"
assets      : {assets: ./assets}
libraries   : {libraries: ./libraries}
ext_widgets : {rCharts: [libraries/nvd3, libraries/leaflet, libraries/dygraphs]}
# uni-rot(#a51e37)
---

<!-- Markdown emphasis workaround (https://github.com/ramnathv/slidify/issues/224) -->

<style>
em {
  font-style: italic
}
</style>

<style>
strong {
  font-weight: bold;
}
</style>

## Week 4: Reproducible Research and Data Analysis
### Outline

* Create a research compendium
* Publish a research compendium (Zenodo / OSF)

<!-- Recap week 3 -->

---{class: [segue, dark]}
## Recap week 3

--- .class #id
## Recap week 3

* Git & GitHub workflow
  - Create a repository on GitHub & link it to RStudio
  - Write a README.md file
  - Choose and apply a license for your repository/R code
      - [Licensing a GitHub repository](https://docs.github.com/en/github/creating-cloning-and-archiving-repositories/licensing-a-repository)
  - commit & push
* **TO DO: Unlock Pull & Push from RStudio!**

--- .class #id
## swirl modules (week 3)
### 5. Missing Values

* `NA` (not available/missing), `NAN` (not a number),
* Any operation involving NA generally yields NA as the result
* `is.na()` function (logical result)
* `TRUE` represented in R as 1, `FALSE` represented in R as 0 (good to know when counting)

--- .class #id
## swirl modules (week 3)
### 6. Subsetting Vectors

* `[]` place an 'index vector' in square brackets to subset a vector
* 'index vector': logical, positive/negative integers, character
  - logical: `x[is.na(x)]`, `x[!is.na(x)]`
  - logical: `x[!is.na(x) & x>0]` (AND operator)
  - pos. integer: `x[1:10]` (first 10 values of x), `x[c(3,5,7)]` (3rd, 5th and 7th values of x)
  - neg. integer: `x[-c(2, 10)]` (all values except the 2nd and 10th)
  - char: `vect["bar"]`
* `names()` function
* `identical()` function

--- .class #id
## Assignments (week 4)

Complete swirl modules '7: Matrices and Data Frames' and '8: Logic' and submit your successful completion via email (domenico.giusti@uni-tuebingen.de)

> **swirl modules won't count towards your final grade but are highly recommended to follow. Those topics will be covered on the final exam.**

---{class: [segue, dark]}
## Git & GitHub basic workflow - Pull & Push from RStudio

--- .class #id
## Git w/ RStudio
### Start a project in a brand new working directory

1. Click the “File” menu button, then “New Project”
2. Click “New Directory”
3. Click “New Project”
4. Type in the name of the directory to store your project, e.g. “test_rr”
5. **Check "Create a git repository"**
6. Hit the “Create Project” button!
7. Create a new repository on GitHub
8. `git remote add origin git@github.com:dncgst/test10.git`
9. `git branch -M master` (NOTE: RStudio names the principal branch `master`; GitHub recently renamed it `main`)
10. `git push -u origin master`
11. Restart RStudio after you run `git push -u origin master` from the command line

--- .class #id
## Git w/ RStudio
### Associate a project with an existing working directory

1. Click the “File” menu button, then “New Project”
2. Click "Existing Directory"
3. Browse your project working directory
4. Hit the “Create Project” button!
5. Click the "Tools" menu button, then "Project Options..."
6. Select "Git/SVN" from the menu on the left
7. Version control system: Select "Git" from the dropdown menu
8. Create a new repository on GitHub
9. `git remote add origin git@github.com:dncgst/test10.git`
10. `git branch -M master` (NOTE: RStudio names the principal branch `master`; GitHub recently renamed it `main`)
11. `git push -u origin master`
12. Restart RStudio after you run `git push -u origin master` from the command line

--- .class #id
## Git w/ RStudio
### Checkout a project from a version control repository

1. Click the “File” menu button, then “New Project”
2. Click "Version Control"
3. Click "Git (_Clone_ a project from a Git repository)"
4. Type the repository URL: (e.g. git@github.com:dncgst/test12.git)
5. Type the Project directory name: (e.g., test12)
6. Hit the “Create Project” button!
7. Branch named `main` also in RStudio
8. Origin added during the cloning process

--- .class #id
## Git w/ RStudio
### Configure Git wo/ Shell


```r
install.packages('usethis')
library('usethis')
usethis::use_git_config(user.name = "dncgst", user.email = "dncgst@autistici.org")
usethis::edit_git_config()
```

--- .class #id
## Git w/ RStudio
### Create a Personal Access Token (PAT) on GitHub

> The best way to connect RStudio and GitHub is using your username and a Personal Access Token (PAT). To generate a personal access token, use the `create_github_token()` function from usethis. This will take you to the appropriate page on the GitHub website, where you’ll give your token a name and copy it (don’t lose it because it will never appear again!). [How to Use Git/GitHub with R](https://rfortherestofus.com/2021/02/how-to-use-git-github-with-r/)


```r
library('usethis')
usethis::create_github_token() # accept default settings and generate the token
# copy the generated token
install.packages('gitcreds')
library('gitcreds')
gitcreds_set()
# enter your copied token
```

--- .class #id
## Git w/ RStudio
### Start a project in a brand new working directory

1. Click the “File” menu button, then “New Project”
2. Click “New Directory”
3. Click “New Project”
4. Type in the name of the directory to store your project, e.g. “test_rr”
5. **Check "Create a git repository"**
6. Hit the “Create Project” button!
7. Do you first commit
8. `library(usethis)`
9. use the `use_github()` function, which will create a GitHub repo and connect it to your current RStudio project

---{class: [segue, dark]}
## Create and publish a research compendium

--- .class #id &twocol w1:50% w2:50%
## What is a research compendium?

*** =left
<img style='margin-top: 10px' class='center' src='assets/img/ResearchCompendium.jpg' width=480px></img>

This image was created by Scriberia for [The Turing Way](https://the-turing-way.netlify.app/welcome.html) community and is used under a [CC-BY licence](https://creativecommons.org/licenses/by/4.0/)

*** =right
* A research compendium is a collection of all digital parts of a research project including _data_, _code_, _texts_.
* A research compendium can be constructed with minimal technical knowledge (a basic folder structure combining all components can be sufficient).
* Publishing your research paper along with a research compendium allows others to access your input, test your analysis, and, if the compendium can be executed, rerun to assess the resulting output. This does not only instill trust in your research but can give you more visibility.

--- .class #id
## Structure of a Research Compendium

Three principles should be kept in mind when constructing a research compendium.

* Files should be organized in a conventional folder structure;
* Data, methods, and output should be clearly separated;
* The computational environment should be specified.

[Marwick et al. 2018](https://peerj.com/preprints/3192v2/)

* [Research Compendium](https://research-compendium.science/) contains links to further resources and publications on research compendia
  - GitHub · https://github.com/topics/research-compendium/
  - Zenodo · https://zenodo.org/communities/research-compendium/
  - OSF · https://osf.io/search/?q=tags:research-compendium


--- .class #id
### Basic Compendium

```
compendium/
├── data
|   ├── raw_data.csv
│   ├── my_data.csv
├── figures
│   └── fig1.jpg
├── src/analysis
│   ├── my_script.R
|   ├── fig1.R
├── text/doc
│   └── manuscript.Rmd
├── DESCRIPTION
├── LICENSE
└── README.md
```

--- .class #id
### Executable Compendium

It contains code, data, text, figures + the _computing environment_ is described in the `Dockerfile`, the dependencies of files and how to automatically generate the results are described in the `Makefile` (e.g., [benmarwick/1989-excavation-report-Madjedbebe](https://github.com/benmarwick/1989-excavation-report-Madjedbebe)).

```
compendium/
├── data
│   ├── my_data.csv
├── Dockerfile
├── figures
│   └── fig1.jpg
├── Makefile
├── src/analysis
|   ├── fig1.R
├── text/doc
│   └── manuscript.Rmd
├── DESCRIPTION
├── LICENSE
└── README.md
```

--- .class #id
## Create a Research Compendium w/Docker

> A version control repository can be a research compendium; A Makefile makes it executable; A reproducible environment makes it reproducible.

> A Docker container can be seen as a computer inside your computer. The cool thing about this virtual computer is that you can send it to your friends; And when they start this computer and run your code they will get exactly the same results as you did.

* Get Docker https://docs.docker.com/get-docker/
  - "Docker is an open platform for developing, shipping, and running applications. Docker enables you to separate your applications from your infrastructure so you can deliver software quickly."
* Follow this tutorial: https://jsta.github.io/r-docker-tutorial/
  -

--- .class #id
## Publish a Research Compendium w/ Zenodo

* Log in w/ GitHub
* Settings / GitHub
  1. Flip the switch
  2. Create a release
  3. Get the badge (DOI)
* Edit upload and add some METADATA
* Publish

--- .class #id
## Use a Research Compendium

A research compendium can be used in several ways, including (but not limited to):

* **Peer review**: If peers can check what you have done, they can review it much more thoroughly.
* **Understanding research**: If you really want to understand what someone has done in their research project, the research compendium is what you need to look at.
* **Teaching**: Research compendia can be great examples to be used in teaching.
* **Reproducibility studies / repro hacks**: A research compendium allows other researchers to attempt (and hopefully succeed) to redo your computations.
