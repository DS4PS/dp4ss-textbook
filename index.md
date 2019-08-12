---
title: textbook
---

<style>
  
.textbook-toc>ul {
font-family: "Century Gothic", CenturyGothic, AppleGothic, sans-serif; 
  font-size: 18px; 
  font-style: normal; 
  font-variant: small-caps; 
  font-weight: 100;
  line-height: 26.4px;
}

.textbook-toc>h2 { 
  font-size: 22px;  
  color: maroon;
}

.textbook-toc>h4 { 
  font-family: "Century Gothic", CenturyGothic, AppleGothic, sans-serif; 
  font-weight: 100;
  font-size: 42px;  
  color: #666;
}

.textbook-toc>h1 {
  background-color: #666;
  color: white;
  font-size: 24px;
  padding: 10px;
  margin-top: 70px;
}


.uk-navbar-nav>li>a {
    display: flex;
    justify-content: center;
    align-items: center;
    box-sizing: border-box;
    height: 80px;
    padding: 0 15px;
    font-size: .875rem;
    font-family: system-ui;
    text-decoration: none;
}


iframe {
  display: block;
  margin-left: auto;
  margin-right: auto;
}
 </style>
 




<br>

<div class="textbook-toc">

#### Data Programming for Social Scientists 

# Getting Started

<br>

<iframe src="https://player.vimeo.com/video/180644880" width="640" height="360" frameborder="0" allow="autoplay; fullscreen" allowfullscreen></iframe>

<br>

# The Three Parts of R

## Core R [ [video](https://player.vimeo.com/video/180644880) ]
* What is R?
* How do Packages Work?
* Navigation (working directories, list objects, create folders)
* Scripts 

## R Studio
* Tour of R Studio 
* Navigation in R Studio 
* [Style Guides](https://jef.works/R-style-guide/) 

## Data-Driven Docs [ [splainer](https://ds4ps.org/docs/) ] 
* Data-Driven Documents
* The Importance of Reproducibility 
* [Markdown](https://ds4ps.org/cpp-526-fall-2019/markdown/)
* RMD in RStudio 
  - Headers 
  - Chunks 
  - Knitting 
* [Pimp my RMD](https://holtzy.github.io/Pimp-my-rmd/)
 

# Basic Programming in R 

## CH 01 - R as a Calculator
* Assignment 
* Mathematical Operators 
 
## CH 02 - Functions [ [chapter](http://ds4ps.org/datacamp-light-demo-for-rmd/calc-mortgage.html) ] 
* Input-Output Devices 
* Object-Oriented Coding 
* Arguments 
* Values 
* Returns 
* Reading Help Files 




# One-Dimensional Datasets

## CH 03 - Vectors
* Observations vs Variables (rows vs columns) 
* Vector Types
  - Numeric
  - Character
  - Factors (ordered vs unordered) 
  - Logical (true/false) 
* Checking Vector Types

## CH 04 - Working with Vectors
* Built-In Vectors: e.g. LETTERS
* Generating Vectors
* Missing Values and Non-Numbers
* Empty vectors: NULL


## CH 05 - Altering Vectors
* Defining factors, relevel()
* Recoding Values 
* Find and replace
* Variable Transformations
  - Vectorized addition
  - Defining new vector as function of others:  ifelse(), gsub(), [] <- 
* Casting 
* Implicit Casting (coercion)


## CH 06 –Identifying Groups within Data 
* Set theory as categories and membership 
* Logical Operators 
  - equal
  - not equal 
  - greater than or less than 
  - opposite of
* Compound Statements:  AND and OR
* Casting logical vectors 
* Algebra with logical vectors 
* Defining groups 
  - from categorical variables
  - from numeric variables
  - missing values as a group



# Two-Dimensional Datasets

## CH 07 – Dataframes
* Creating data frames from vectors
* the $ operator
* Checking and changing class types
* Filter rows and select columns 
* Reorder rows or columns 
* CSV vs RDS formats

## CH 08 – Matrices and Lists
* Matrix
* Lists
* Building data objects: 
- data.frame() vs cbind() and rbind()
* Transformations of Datasets 



# Data Wrangling (dplyr)

Data wrangling is the process of preparing data for analysis, which includes reading data into R from a variety of formats, cleaning data, tidying datasets, creating subsets and filters, transforming variables, grouping data, and joining datasets. 

The goal of data wrangling is to create a **rodeo dataset** (clean and well-structured) that is ready for modeling and visualization. 

## CH 09 – Getting Data into R [ [tutorial](https://www.datacamp.com/community/tutorials/r-data-import-tutorial) ]
* Read options   
* Copy and paste from Excel 
* Using rdata format 
* Read from csv or tsv
* Read text files
* Import from Excel
* Import from common format (foreign package)
* Import from the web (RCurl)
* Import from GitHub
* Import from DropBox
* APIs
  - Census
  - Socrata
  - Twitter

## CH 10 - Saving Data [ [tutorial](https://thomasleeper.com/Rcourse/Tutorials/savingdata.html) ]
* Write options 
  - CSV 
  - R Data Sets (RDS)
  - CSV vs RDS
  - Tables 
  - RData Format
  - SPSS or Stata 
* Copy to Clipboard 
* Copy to Excel 


# Tidy Functions

## CH 11 – Slicing Datasets – Base R and dplyr
* Subset operator
* By index, including order / match
* By logical
* Recycling
* Subset by row  -- dplyr::filter()
* Indices
* Selector Vectors
* Subset by column  ---  dplyr::select()

## CH 12 – Combining Datasets
* merge and match
* join in dplyr
* inner, outer, right, left

# Explore and Describe

## CH 13 – Summarizing Vectors
* Counting things:  sum( logical statement )
* Categorical data:  tables
* Missing values
* prop.table() and margin.table()
* Numeric data:  min, max, mean, summary / quantile
* Missing values
* All at once:  summary + data.frame / matrix
* Creating tables of descriptives: factors vs numeric

## CH 14– Summarizing Groups of Vectors
* Table ( f1, f2 ), ftable( row.vars=c(“f1”,”f2”), col.vars=”f3” )
* Function over groups:  tapply( v1, f1 )  or dplyr:: group_by() + summarise()
* Functions over levels of numeric data:  tapply( v1, cut(v2) )
* tapply( v1, INDEX=list(f1,f2)  or dplyr:: group_by() + summarise()
* aggregate( dat, FUN, by=f1 )
*  https://cran.r-project.org/web/packages/DescTools/vignettes/DescToolsCompanion.pdf


# Visualize 

## CH 15 – Principles of Visual Communication
* Ground, figure, narrative (context, subject, action)
* Tufte’s rules 
* Visual tragedies 

## CH 16 – Core Graphics Engine
* Defining a canvas: xlim, ylim
* Adding data
* Type (point, line, both)
* Symbols
* Color
* Size
* Adding grids
* Adding axes
* Adding titles / axes labels
* Adding data labels:  text()
* Margins

## CH 17 – Advanced Graphics
* Colors and color functions
* Custom fonts / math symbols
* Multiple Plots (core graphics)
  - Incorrect:  https://en.wikipedia.org/wiki/File:Smallmult.png#/media/File:Smallmult.png
* Custom graph layouts

## CH 18 – ggplot2
* Grammar of graphics concept
* ggplot overview


# Make Dynamic

## CH 19 - R shiny [ [tutorial](http://rmarkdown.rstudio.com/authoring_shiny.html) ]
* What makes documents dynamic? 
* Widgets 
  - input objects 
* Render functions 
* reactive 

## CH 20 - flexdashboards [ [overview](http://rmarkdown.rstudio.com/flexdashboard/) ]
* Principles of good dashboard design 
* Layouts 
* Sidebars 
* Value boxes 
* CSS basics 



<br>
<br>
<br>

</div>
