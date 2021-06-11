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
license     : by
github:
  user: dncgst
  repo: openscience_course
  branch: "gh-pages"
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

## Week 5: Open Access to Published Research Results
### Outline

* Git & GitHub workflow
  - Creating and merging pull requests

<!-- Recap week 4 -->

---{class: [segue, dark]}
## Recap week 4

--- .class #id
## Recap week 4

* Create a research compendium
* Publish a research compendium (Zenodo)

--- .class #id
## swirl modules (week 4)
### 7: Matrices and Data Frames

* matrices and dataframes are (2-dimensional) tabular data types - data with rows and columns
* matrices can only contain a single class of data, while data frames can consist of many different classes of data
* `dim()` function, to get OR set the `dim` attribute for an R object
* `attributes()` function
* `class()` function
* `matrix()` function, to create matrices
* `data.frame()` function, to create data frames
* `cbind()` function, to combine columns
* `colnames()` function, to set the `colnames` attribute

--- .class #id
## swirl modules (week 4)
### 8: Logic

* logical (boolean) values: TRUE and FALSE
* logical operators:
  - `==`, `<`, `<=`, `>`, `>=`, `!=`
  - `!` NOT operator negates logical expressions (`!TRUE`, `!FALSE`)
  - `&`, `&&` AND operators, TRUE if both operands are TRUE
  - `|`, `||` OR operators, TRUE if one of the operands is TRUE
* functions to deal w/ logical expressions:
  - `isTRUE()`
  - `xor()` (exclusive OR) - If one argument evaluates to TRUE and one argument evaluates to FALSE, then this function will return TRUE, otherwise it will return FALSE. xor(TRUE, TRUE) evaluates to FALSE.
  - `which()`, `any()` , `all()`

--- .class #id
## Assignments (week 4)

Complete swirl module '12: Looking at Data' and submit your successful completion via email (domenico.giusti@uni-tuebingen.de)

> **swirl modules won't count towards your final grade but it is highly recommended to complete them - the topics covered in the swirl modules will be on the final exam.**

---{class: [segue, dark]}
## Git & GitHub basic workflow
### Creating and merging pull requests

--- .class #id
## About pull requests

Pull requests help you collaborate on code with other people. Pull requests let you tell others about changes

* you've pushed to a branch in a repository on GitHub
* you've made to a fork of an upstream repository.

Once a pull request is opened, you can discuss and review the potential changes with collaborators and add follow-up commits before your changes are merged into the base branch.

[GitHub Docs](https://docs.github.com/en/github/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/about-pull-requests)

--- .class #id
## Contribute to CRAN Task View: Archaeological Science

* Sign in [GitHub](https://github.com)
* Go to https://github.com/benmarwick/ctv-archaeology
* Hit the 'Fork' button
* Now you have Ben's repo in your GitHub repositories: [dncgst/ctv-archaeology](https://github.com/dncgst/ctv-archaeology), forked from [benmarwick/ctv-archaeology](https://github.com/benmarwick/ctv-archaeology)
* Fetch upstream, if time passed since you forked the repo

--- .class #id
## Clone your new GitHub repo to your workspace

```
git clone git@github.com:dncgst/ctv-archaeology.git
```

(See exercises 3 & 4)

--- .class #id
## Create a pull request

* Edit README.md: Giusti, D., Konidaris, G. E., Tourloukis, V., Marini, M., Maron, M., Zerboni, A., … Harvati, K. (2019). Recursive anisotropy: a spatial taphonomic study of the Early Pleistocene vertebrate assemblage of Tsiotra Vryssi, Mygdonia Basin, Greece. Boreas, 0(0). https://doi.org/10.1111/bor.12368

--> Volume48, Issue3, July 2019, Pages 713-730

* Stage, Commit, Push
* From your repo, 'Contribute' -> Open pull request
* Create pull request
* Comment & Create pull request
* https://github.com/benmarwick/ctv-archaeology/pulls

--- .class #id
## Fork this course!

* Sign in [GitHub](https://github.com)
* Go to https://github.com/dncgst/openscience_course
* Hit the 'Fork' button
* Now you have this course in your repositories, forked from [dncgst/openscience_course](https://github.com/dncgst/openscience_course)
* Fetch upstream, if time passed since you forked the repo

--- .class #id
## Clone your new GitHub repo to your workspace

(See exercises 3 & 4)

--- .class #id
## Add a LICENSE

"This work is an Open Educational Resource, and is therefore licensed under a [Creative Commons Attribution 4.0 International License](https://creativecommons.org/licenses/by/4.0/)"

* Add a LICENSE.txt - copy-paste/save-as the [CC BY 4.0 legal code](https://creativecommons.org/licenses/by/4.0/legalcode.txt)
* Stage, Commit & Push to your repo

--- .class #id
## Create a pull request

* From your repo, 'Contribute' -> Open pull request
* Create pull request
* Comment & Create pull request
* https://github.com/dncgst/openscience_course/pulls

--- .class #id
## Merge a pull request

* https://github.com/dncgst/openscience_course/pulls
* 
