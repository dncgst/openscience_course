Open Science. Basic principles and best practices
===================================================

## Week 3: Open Research Software and Open Source

Welcome to the 3rd week of the Open Science course. Last week we looked at one of the key nodes of the Open Science system: Open Data. This week we are putting in place another building block of the Open Science framework: Open source software.

<!-- Course roadmap -->

To help you navigating the Open Science system, Here we are. Note that in this mindmap the node we are exploring today is a branch of the higher level 'Reproducible Research' node, which we will treat in detail next week.

<!-- Outline -->

As usual, the outline of this lecture, starting w/ some definitions and contextual information, exploring thereafter the rationale behind Open source research software and concluding as always w/ some FAQs and considerations.

<!-- Definitions -->

The FOSTER project gives this definition of Open research software:

> Open research software, or open-source research software, refers to the use and development of software [code] for analysis, simulation, visualization, etc. where the full source code is available [and] shared under a license that allows modification, derivation, and redistribution.

First off, it's clear that we itend here w/ research software the code we write for our data analysis (using R, Python or whatever programming language you'd prefer, better if not-proprietary software). Indeed, for the full realization of Open Science (to make your Research Reproducible), beside the data, one should also open the code used to analyze the data, "under a license that allows **modification**, **derivation**, and **redistribution**."

This definition of _Open Source_ research software, explicitily refer to the 'The Open Source Definition'.

We have already seen at the very beginning of this course that the definition of 'Openess' itself is derived from the 'Open Source Definition' - and we have already seen the link, through the Debian project, between the 'Open Source Definition' and the Free Software definition.

For clarity, let me just open here a short parenthesis. Is there any difference among those definitions?

<!-- FLOSS -->

Beside the number of points (4 VS 10), They agree at a 99% rate, but that 1% caused, or still cause, misanderstanding between them.

To settle things once for all, FLOSS (Free Libre Open Source Software) is a collective name for both definitions.

<!-- FLOSS VS Proprietary software -->

More important than internal arguments (which are not the topic of this lecture), it's the difference with proprietary software.

<!-- FLOSS research software -->

In archaeology, for example, FLOSS software

> frees researchers from the _black box_ that most mouse-driven programs are

In proprietary software,

> the details of the data analysis are not available for inspection and modification because of the proprietary [close] code of the software. This constrains the transparency of research conducted with much commercial and mouse-driven software [such as Excel, MATLAB, SPSS...]

On the other hand, FLOSS software

> enables researchers to not only rerun the shared analysis, but to gain access to all parameter settings, empowering them to change these and so properly evaluate, extend and reuse the published results.

Moreover, FLOSS software disrupts any possible economic barriers in the research community.

> As open source languages such as R (and Python) are free to use, and many trustworthy repositories are also free (such as Zenodo, Open Science Framework, Figshare, etc.), then even researchers with limited resources anywhere in the world can contribute equally to the research community by using and sharing code.

Nevertheless,

> The dominant mode of [doing] data analysis for many researchers is by using mouse-operated point-and-click interface with commercial software such as Microsoft’s Excel [and] IBM’s SPSS. This method of interaction is a formidable obstacle to reproducibility because mouse gestures leave few traces that are enduring and accessible to others.

Well,

> While there are [...] methods to solve these problems (such as writing out all the operations in plain English or making a video screen-capture of the analysis), currently _the most convenient and efficient solution_ is to interact with the data analysis tools using a script, [a programming language such as R].

<!-- Rationale -->

We are archaeologist (linguistics, geographers), why are we talking about software, and specifically about open source software?

<!-- A tool-driven revolution? -->

Because, in Archaeology, after many paradigm-shifts and technological revolutions, is emerging another tool-driven revolution, or at least a change,

> from analysing data using tools dependent on point-and-clicking with a mouse in closed source software [Excel], to tools based on writing scripts in open source programming languages and making them openly available.

Several factors might be related to this emerging change:

* first, despite archaeology is by nature a data-poor science, it has experienced in the last decades a significant increase in the rate of data collection.
* parallel to this, the increase in computing power has made complex analytical processes faster and more convenient to compute, also from desktop computers.
* moreover, the development of free, open source and easily extensible software for data analysis and visualisation, such as R, allows new methods to spread out quickly
* AND many archaeological tasks have shifted from the descriptive and qualitative aspects to quantitative and computational analyses -> **we are increasingly dependent on software to generate our results**.

<!-- Articles citing R -->

This Figure from [Schmidt & Marwick 2020] shows on the left the

> Percentage of articles per year citing R in top Ecology journals (_5,800_ articles out of 42,659).

and on the right the

> Proportion of Archaeology articles per year citing R (a total of _154_ out of 42,991 articles in our sample for 2008–2018). [The] sub-plot shows articles published in the Journal of Archaeological Science during 2008–2017. [Schmidt & Marwick 2020]

First off, the proportions and the absolute number of articles citing R in archaeology (_154_) are much smaller than what we see in the ecology journals (_5800_). Archaeoly is adopting R for data analysis and visualization at a much lower rate than ecology - the hope is that archaeology will keep borrowing from ecology methods and tools, as it has been done for long time, at least from the paradigm-shift established with the New Archaeology.

Second, while we see a clear upward trend in Ecology journals, most archaeology journals do not show any strong increase in the percentage of article citing R over time - a part from the _Journal of Archeological Science_ for which there is some evidence for a non-random increase in citations of R over time.

<!-- Articles sharing R -->

Being the use of programming languages a determinant factor for easily sharing methods and code, the authors investigated as well the rate of sharing, among those publications citing R.

> They identified 85 articles that include R script and data files, either in the supplementary materials or in a trustworthy data repository such as Zenodo, Open Science Framework, Figshare, etc.

The figure shows that, though small, the number of publications in Archaeology using and sharing R code is nevertheless increasing. I think that, beside the already mentioned factors, we can read as well in this outcome a renewed interest in Open Science and in Reproducible Research practices.

The more you share, the more fast and widespread will be the adoption of Open Science principles and practices. It's a kind of chain reaction.

<!-- Citation effects -->

To fuel this reaction, the citation advantage is always a good incentive. The same authors found that

> archaeological articles that cite R are consistently more highly cited themselves than articles that do not cite R.

<!-- T- -> Pi-shaped research -->

As

> archaeology has started to embrace tools that improve the reproducibility of research. [Schmidt & Marwick 2020]

it's becoming more urgent the need for future archaeologists to be trained as Pi-shaped researchers, rather than T-shaped researchers.

> Current approaches to postgraduate training for archaeologists results in T-shaped researchers with wide-but-shallow general knowledge, but deep expertise and skill in one particular area. In contrast, a Pi-shaped researcher has the same wide breadth, but has [parallel to a deep knowledge in some specialization], a second area of deep knowledge in the computational principles and tools that enable reproducible research.

With many journals already embracing in their policies principles of Open Science, I think Universities should now answer the need to incentivize training in reproducible research.

<!-- T- ~ Pi-shaped research -->

As Prof. Riede put it: "the true frontier of archaeological research rests in quantitative, data-driven approaches". However, he goes further, and aim to reconcile the separation between (domain-specialist) T-shaped researchers and (domain-specialist plus quantitatively enabled) π-shaped researchers.

Quoting him: "all these T- and π-shaped folks now need to get much better at holding hands: at pooling their skills and do good archaeological team science. The world as such and archaeology as well have become so complex in data and methods that individuals no longer can do it alone anymore."

He aims at A true "collaborative science". As we heve already seen, INTEROPERABILITY (of data, code, methods) is FUNDAMENTAL to enable COLLABORATION.

<!--  -->

Free and Open source software are ad hoc tools for sparkling COLLABORATION.

<!-- The π-shaped research lifecycle -->

Free and Open source software are as well ad hoc tools for developing every step of the research lifecycle, from the research plan and design, to coding, visualizing results and writing reports, all through a version control system.

<!--  -->

Overall, let's not forget that:

"An article about a computational result is advertising, not scholarship. The actual scholarship is the full software environment, code and data, that produced the result"

Indeed, Sharing software used for research (whether computational in nature, or that relies on any software-based analysis/interpretation) is a necessary, though not sufficient, condition for reproducibility. "The actual scholarship is the **full software environment**, **code** AND **data**, that produced the result"

<!-- Best practices -->

Here are some recommendations:

* Make source code publicly accessible **from day one** [or at least think to do it from day 1. It's much easier than turing your code from close to open].
* Make software easy to discover by providing software **metadata** via a popular community registry [so to say, write down descriptive code and publish it w/ a DOI]
* Accompain your code w/ a **license**
  - [here is a nice tutorial] Choosealicense.com
  - [But] Release under the [MIT license] to enable maximum reuse
  - How to apply a license? Create a text file (typically named LICENSE or LICENSE.txt) in the root of your source code and copy the text of the license into the file.
* Appropriately cite the software you have used
    - (e.g.) [here the full citation of R] "R Core Team (2021). R: A language and environment for statistical computing. R Foundation for Statistical
    Computing, Vienna, Austria. URL https://www.R-project.org/."
    - [and here is the R command to get a package citation] citation("pkgname")

<!-- Cons -->

There are of course disadvantages to be considered:

> A certain familiarity with the computational tools is required to be able to use them not just on a technological basis, but creatively and in full knowledge of their restrictions and ambiguities.

> As with data, preparing code to make it publicly available takes time to ensure that it is fit for others to read and use.

However,

both constraints (the steep learning curve common to many programming Software, and the time effort to make code ready for publication) might be bypassed by investing MORE in developing dedicated training at all levels of higher education.

<!-- FAQ -->

I leave you with the usual FAQ from the FOSTER project

<!-- Food for thought -->

and a consideration.

<!-- Practical exercises -->

Next Friday we will start playing with Git and GitHub, our version control friends.
