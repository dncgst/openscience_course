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
hitheme     : github      # style to use for syntax highlighting {tomorrow, github, zenburn, solarized-dark, ...}
widgets     : [mathjax, quiz, bootstrap]  # widgets to include {mathjax, quiz, bootstrap}
mode        : selfcontained # {selfcontained, standalone, draft}
knit        : slidify::knit2slides
biglogo     : UT_WBMW_Rot_RGB_01.png
logo        : UT_WBMW_Rot_RGB_01.png
license     : by-sa
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

<!-- Icebreaker
      In order to energize audience members and help them get to know the trainers and each other, many training sessions begin with an ice-breaker exercise. Creating a warm, welcoming, friendly and positive learning environment should enable attendees to better participate and learn, and help them to feel more comfortable.
-->

## Week 1: Open Concepts and Principles
### Outline

* Introduction to some of the best tools for doing Reproducible Research
  - R & RStudio
  - (R)Markdown
  - GitHub
  - Zenodo, OSF

--- .class #id
## Reproducible research

<img src="assets/img/ReproducibleJourney.jpg" width=650px class='center'></img>

This image (and the previous one) was created by Scriberia for [The Turing Way](https://the-turing-way.netlify.app/welcome.html) community and is used under a [CC-BY licence](https://creativecommons.org/licenses/by/4.0/)

--- .class #id
## The Open Scientist's Toolbox

* [R](https://cran.r-project.org/) + [RStudio](https://www.rstudio.com/)
* [RMarkdown](https://cran.r-project.org/web/packages/rmarkdown/index.html)
* [Git](https://git-scm.com/) + [GitHub](https://github.com/)
* [Zenodo](https://zenodo.org/), [OSF](https://osf.io/)

<!-- Introduction to R & RStudio -->

---{class: [segue, dark]}
## Introduction to R & RStudio

--- .class #id
## Setup

If you don't have it already, now might be a good time to install R and RStudio to get started.

Download and install the [R base system](https://cran.rstudio.com/) and [RStudio](http://www.rstudio.com/products/rstudio/download/). Both are needed. Installing RStudio will not automatically install R.

---
## R

* Programming language
* Started as a statistics and data analysis environment
* But can also build websites, run simulations, and lots of other things
* R is what runs all of the code we will write this semester
* Separate from RStudio

---
## RStudio

* IDE - Integrated Development Environment
* Makes developing code in R easier
* It includes a number of different aspects of code development in one place
  - Console - where R is actually running. Can work in here “interactively”
  - Text editor - writing dynamic documents (text ~ code) .R .Rmd .txt ...
  - Environment - provides information on the variables that currently exist and their values
  - History - history of the commands you’ve run
  - Project management - create, delete, and rename files & folders
  - Plots - graphic device

---
## RStudio

<img src='assets/img/Screenshot from 2021-04-29 16-11-34.png' width=900px class='center'></img>

---
## R packages

It is possible to add functions to R by installing packages. At the time of writing, the [CRAN](https://cran.r-project.org/) package repository features 17485 available packages.

CRAN Task Views allow you to browse packages by topic and provide tools to automatically install all packages for special areas of interest.
* [CRAN Task View: Reproducible Research](https://cran.r-project.org/web/views/ReproducibleResearch.html)
* [CRAN Task View: Archaeological Science](https://github.com/benmarwick/ctv-archaeology)
* [CRAN Task View: Analysis of Spatial Data](https://cran.r-project.org/web/views/Spatial.html)
* [CRAN Task View: Statistical Genetics](https://cran.r-project.org/web/views/Genetics.html)
* [CRAN Task View: Natural Language Processing](https://cran.r-project.org/web/views/NaturalLanguageProcessing.html)

---
## R packages

R and RStudio have functionality for managing packages.

From the console, you can install packages by typing:


```r
install.packages("packagename")
```

You can make a package available for use with:


```r
library("packagename")
```

Packages can also be confortably viewed, loaded, and detached in the Packages tab of RStudio.

---
## Assignments

"The [swirl](https://swirlstats.com/students.html) R package makes it fun and easy to learn R programming and data science. If you are new to R, have no fear."


```r
# this is a comment
install.packages("swirl") # install the package
library("swirl") # load the package
swirl() # start swirl
```

The first time you start swirl, you'll be prompted to install a course. Select 5: Don't install anything for me. I'll do it myself. A [GitHub](https://github.com/swirldev/swirl_courses) collection of interactive courses will open. Back to the console, type:


```r
install_course_github("swirldev", "R_Programming_E")
```

> Complete swirl modules 1 and 2 (submit to domenico.giusti@uni-tuebingen.de)

<!-- Introduction to Markdown & RMarkdown -->

---{class: [segue, dark]}
## Introduction to Markdown & RMarkdown

--- .class #id
## In the beginning was Literate programming

YEAR | Event
:----|:--------------------------------------------------------------
1992 | "Literate Programming" is introduced by [Donald Knuth](http://www-cs-faculty.stanford.edu/~knuth/lp.html) as "that (which) combines a programming language with a documentation language, thereby making programs more robust, more portable, more easily maintained, and arguably more fun to write than programs that are written only in a high-level language. The main idea is to treat a **program as a piece of literature**, addressed to human beings rather than to a computer."
2002 | Friedrich Leisch introduces [SWEAVE](https://cran.r-project.org/doc/Rnews/Rnews_2002-3.pdf), a program for "Dynamic generation of statistical reports using literate data analysis"
2004 | John Gruber creates the [Markdown](https://daringfireball.net/projects/markdown/) language in collaboration with _Aaron Swartz_. Their goal was to "write using an easy-to-read, easy-to-write plain text format, and optionally convert it to structurally valid XHTML (or HTML)"
2012 | [knitr](https://yihui.org/knitr/) R package released - knitr was inspired by SWEAVE
2014 | [rmarkdown](https://rmarkdown.rstudio.com/) R package released - extends Markdown to work with R/RStudio environment

--- .class #id
## rmarkdown

<img src="assets/img/logo.png" width=150px class='center'></img>

* [rmarkdown](https://rmarkdown.rstudio.com/) extends the Markdown language originally intended to write documents for the Web (i.e. HTML).

* rmarkdown leverages [Pandoc](http://pandoc.org) to convert between formats: from HTML (readable by web browsers) to DOC (such as from Microsoft Word or Google Docs) to ODT (Libre Office) to PDF (portable document format) to others like EPUB (e-books), HTML5 slide shows (slidy, ioslides), and TeX based documents and slides (Beamer).

---
## rmarkdown

"The rmarkdown package helps you **create dynamic analysis documents that combine code, rendered output (such as figures), and prose**. You bring your data, code, and ideas, and R Markdown renders your content into a polished document that can be used to:

* Do data science interactively within the RStudio IDE,
* Reproduce your analyses,
* Collaborate and share code with others, and
* Communicate your results with others.

R Markdown documents can be rendered to many output formats including HTML documents, PDFs, Word files, slideshows, and more, allowing you to focus on the content while R Markdown takes care of your presentation".

[rmarkdown](https://rmarkdown.rstudio.com/docs/)

--- .class #id &twocol w1:50% w2:50%
## How rmarkdown works

*** =left
<img src="assets/img/rmarkdownflow.png" width=500px class='center'></img>

*** =right
<img src="assets/img/bandthree2.png" width=400px class='center'></img>

[rmarkdown](https://rmarkdown.rstudio.com/docs/)

---
## rmarkdown installation

"The easiest way to install the rmarkdown package is from within the RStudio IDE, but you don’t need to explicitly install it or load it, as RStudio automatically does both when needed. A recent version of Pandoc (>= 1.12.3) is also required; RStudio also automatically includes this too so you do not need to download Pandoc if you plan to use rmarkdown from the RStudio IDE."

[rmarkdown](https://rmarkdown.rstudio.com/docs/)

--- .class #id &twocol w1:50% w2:50%
## Markdown syntax

*** =left

```r
# Heading level 1
```
# Heading level 1


```r
## Heading level 2
```
## Heading level 2


```r
### Heading level 3
```
### Heading level 3


```r
#### Heading level 4
```
#### Heading level 4

[The Markdown Guide](https://www.markdownguide.org/)

*** =right

```r
**Bold text**
```
**Bold text**


```r
_Italic text_
```
_Italic text_


```r
1. First item
2. Second item
3. Third item
```
1. First item
2. Second item
3. Third item

<!-- Introduction to Git & GitHub -->

---{class: [segue, dark]}
## Introduction to Git & GitHub

--- .class #id &twocol w1:50% w2:50%
## Version control system

*** =left
<img src='assets/img/phd101212s.gif' width=350px class='center'></img>

*** =right
<img src='assets/img/phd052810s.gif' width=750px class='center'></img>

[PhD comics](http://phdcomics.com/)

--- .class #id

<img src='assets/img/VersionControl.jpg' width=750px class='center'></img>

This image (and the previous one) was created by Scriberia for [The Turing Way](https://the-turing-way.netlify.app/welcome.html) community and is used under a [CC-BY licence](https://creativecommons.org/licenses/by/4.0/)

--- .class #id

<img src='assets/img/20190216-git-github.png' width=1000px class='center'></img>

---
## Assignments
### Git

* Download and install [Git](https://git-scm.com/)
  - Windows https://git-scm.com/download/win
  - Mac https://git-scm.com/download/mac
  - GNU/Linux https://git-scm.com/download/linux

(Git is a command line program. Do not install any GUI client)

### GitHub

* Create an account on [GitHub](https://github.com)
* Send your username to your [instructor](https://github.com/dncgst)

<!-- Introduction to pre-print service (Zenodo) -->

---{class: [segue, dark]}
## Introduction to Zenodo

--- .class #id

<img src='assets/img/zenodo-black-1000.png' width=750px class='center'></img>

Zenodo is a project funded by CERN, Open AIRE and the EU (Horizon 2020).

"The OpenAIRE project, in the vanguard of the open access and open data movements in Europe was commissioned by the EC to support their nascent Open Data policy by providing a catch-all repository for EC funded research. CERN, an OpenAIRE partner and pioneer in open source, open access and open data, provided this capability and Zenodo was launched in May 2013." [Zenodo](https://about.zenodo.org/)

---
## Assignments

* Read the Zenodo [principles](https://about.zenodo.org/principles/) (possibly after the 2nd lecture)
* Sign up on Zenodo (with GitHub)

<!-- Introduction to COS & OSF -->

---{class: [segue, dark]}
## Introduction to COS & OSF

---

<iframe width="560" height="315" src="https://www.youtube.com/embed/9YuNGB3vNOw" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

<!-- References & Further resources -->

--- .class #id
## Cheatsheets

* [Base R](https://raw.githubusercontent.com/rstudio/cheatsheets/master/base-r.pdf)
* [R Markdown Reference Guide](https://www.rstudio.com/wp-content/uploads/2015/03/rmarkdown-reference.pdf)
* [R Markdown](https://raw.githubusercontent.com/rstudio/cheatsheets/master/rmarkdown-2.0.pdf)
