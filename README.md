# Data Programming for the Social Sciences


To upload to LeadPub:

http://help.leanpub.com/en/articles/2916385-getting-started-using-git-and-github-writing-mode




## p-010 The Data Programming Toolkit

CH-01 - [Base R](http://ds4ps.org/dp4ss-textbook/ch-010-core-r.html)  
CH-02 - [R Studio](http://ds4ps.org/dp4ss-textbook/ch-020-rstudio.html)  
CH-03 - [Data-Driven Docs](http://ds4ps.org/dp4ss-textbook/ch-030-data-driven-docs.html)    
CH-04 - [Markdown](https://ds4ps.org/cpp-526-fall-2019/markdown/)   

## p-020 Sharpening the Axe

CH-05 - [Learning to Program](http://ds4ps.org/dp4ss-textbook/ch-032-learning_r.html)  
CH-06 - [Getting Help]  
CH-07 - Navigating R    **JAMISON**

## p-030 Getting Started

CH-08 - [TI 2.0 - R as Calculator](http://ds4ps.org/dp4ss-textbook/ch-033-calculator.html)  
CH-XX - Objects and Assignment?  
CH-09 - [Functions and Disfunctions](http://ds4ps.org/dp4ss-textbook/ch-040-functions.html) ]   
CH-10 - [Scripts]    


## p-040 One-Dimensional Datasets

CH-11 - Intro to Vectors  
CH-12 - Data Types  
CH-13 - Generating Vectors  
CH-14 - Modifying Vectors  


## p-050 Analysis with Vectors 

CH-15 - Logical Statements  
CH-16 - Summarizing Vectors 


## p-060 Two-Dimensional Datasets  

CH-16 - Dataframes  
CH-17 - Matrices and Lists    


## p-070 Data Ingestion

CH-18 - Inhale    
CH-19 - Exhale    


## p-080 Data Wrangling

CH-20 - Choppy chop  
CH-21 - Joiny join   

what can we do with data? (create, destroy, combine, re-organize) 

(groupy group) ? 
- group_by + summarize  
- group_by + transform + ungroup


## p-090 Describe 

CH-22 - Summarizing Columns   
CH-23 - Summarizing Groups
CH-XX - Transform with window functions ?

By end of 080 and 090 they should be able to do most of:
https://www.rstudio.com/wp-content/uploads/2015/02/data-wrangling-cheatsheet.pdf
Or push some of these to DS II (data wrangling couse)? 


## p-100 Visualization 

CH-24 - Principles of Visual Communication  
CH-25 - Base R Graphics  
CH-26 - Color  
CH-27 - Customization  


## p110 Grammar of Graphics  

CH-28 - ggplot  
CH-29 - groups  
CH-30 - themes  
CH-31 - web graphics  


## p-120 Dynamic Graphics  

CH-32 - Shiny  
CH-33 - Dashboards  











------------


# One-Dimensional Datasets


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




------------



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



-------------




# Introducing R

[Core R](http://ds4ps.org/dp4ss-textbook/ch-010-core-r.html)
  * What is R? [ [video](https://player.vimeo.com/video/180644880) ]
  * How do Packages Work? 

[R Studio](http://ds4ps.org/dp4ss-textbook/ch-020-rstudio.html)
  * Tour of R Studio  
  * Navigation in R Studio  
  * [Style Guides](https://jef.works/R-style-guide/)  

[Data-Driven Docs](http://ds4ps.org/dp4ss-textbook/ch-030-data-driven-docs.html)  
  * Data-Driven Documents [ [splainer](https://ds4ps.org/docs/) ]   
  * The Importance of Reproducibility   

[Markdown](https://ds4ps.org/cpp-526-fall-2019/markdown/)  
* RMD in RStudio   
  - Headers   
  - Chunks   
  - Knitting   
  - [Pimp my RMD](https://holtzy.github.io/Pimp-my-rmd/)  
 
 [Learning R](http://ds4ps.org/dp4ss-textbook/ch-032-learning_r.html)

# Getting Started

#### [R as a Calculator](http://ds4ps.org/dp4ss-textbook/ch-033-calculator.html)
* Assignment 
* Mathematical Operators 

#### Functions [ [chapter](http://ds4ps.org/dp4ss-textbook/ch-040-functions.html) ] 
* Input-Output Devices 
* Object-Oriented Coding 
* Arguments 
* Values 
* Return 

#### Data Recipes
* Scripts 

#### Navigating R
* Navigation (working directories, list objects, create folders) 
* Reading Help Files 



------------


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




------------



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


