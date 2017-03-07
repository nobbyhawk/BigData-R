# Your Guide to DataFest
#####Adapted work from tyson-ni on GitHub


## Download Data

Click *Download Sample Data* and save to your working directory (where your R code is)

* [download](https://www.ookla.com/speedtest-intelligence)


_**Remember**_: whenever you have questions about how to use or what to put in a function, type this in console:

**`?feature-I-am-confused-about`**

Do it.

***


## Importing Data

### readr

Imports and exports data *much* faster than default R.

* [manual](https://github.com/hadley/readr/blob/master/README.md)

### Sample!

Start with a *small* sample of the overall dataset.

```{eval=FALSE}
read_csv(file, nrow=*small number*)
```

### Exclude unnecessary columns
```{eval=FALSE}
read_csv  

***

  
## Cleaning and Analyzing Data

You'll spend the most time cleaning data. Don't give up. Patience pays off.


### dplyr

The single most powerful library in R. Summarize, filter, remove, transform and create new data... You'll save lots of time and trouble if you use this instead of default R.

* [best intro tutorial](https://cran.rstudio.com/web/packages/dplyr/vignettes/introduction.html)

* [PDF cheatsheet](https://www.rstudio.com/wp-content/uploads/2015/02/data-wrangling-cheatsheet.pdf)

* [another tutorial](http://genomicsclass.github.io/book/pages/dplyr_tutorial.html)

* [yet another tutorial](http://www.r-bloggers.com/data-manipulation-with-dplyr/)

#### Pipe Operators
*%>%* Saves a lot of memory, and is much more readable

```{eval=FALSE}
 dataset <- read_csv(android) %>%
          dplyr::group_by(device) %>%
          dplyr::summarise(avgSpeed = download_kbps) %>%
          dplyr::arrange(avgSpeed)
```
             
This is the same code as:

```{eval=FALSE}
data set <- arrange(summarise(group_by(read_csv(android), device), avgSpeed = download_kbps), avgSpeed))
```


### stringr

Great for working with strings

* [tutorial](https://cran.r-project.org/web/packages/stringr/vignettes/stringr.html)

### lubridate

* A quick way to format variables that store time and dates
* [tutorial](https://cran.r-project.org/web/packages/lubridate/vignettes/lubridate.html)

### regular expression (regex)

> Let's say you want to extract the height and width dimensions in an artworks dataset. The original variable stores the info like this mess: `19 1/8 x 66 1/2"(48.6 x 168.9cm)`

> We only care about `48.6` and `168.9`. We do this through REGEX. 

> This is the regex pattern to get `48.6` : `"\\(([:digit:]+\\.*[:digit:]*)\\s[x×]"`

> This is the regex pattern to get `168.9` : `"[x×]\\s([:digit:]+\\.*[:digit:]*)\\scm"`

* Great website to learn regex and practice live! 
* [link](http://www.regexr.com/)


***

### pandas in Python

For Python coders

* [10 minute tutorial](http://pandas.pydata.org/pandas-docs/version/0.15.2/10min.html#min)

***


### Quartz's guide to bad data

* A collection of common data recording problems and ways to fix them
* [link](https://github.com/Quartz/bad-data-guide)

***

## Visualization

Wanna win the Best Visualization prize?

### ggplot

Best library for creating graphics in R

### Tableau

A software for creating graphics using drag and drop interface. No code necessary. Play around with this if you're stuck! Tableau Public is free.

* [download](https://public.tableau.com/s/download)
* [tutorial](http://dh101.humanities.ucla.edu/?page_id=163)
* [gallery](https://public.tableau.com/s/gallery)


### plotly

### Python libraries

### D3

Behind some of the most impressive interactive visualizations. Great for creating original graphics that perfectly matches your quirky mental model of what data looks like.

* [great series of tutorials](http://alignedleft.com/tutorials/d3/)
* [demos with code included](http://bl.ocks.org/mbostock)
* [reference manual](https://github.com/mbostock/d3/wiki/API-Reference)

***

## Machine Learning

> Everybody is talking about it. From my experience, DataFest judges want you to *explain why something is the case* rather than predict what might happen. Machine learning usually excels at prediction but not explanation. But definitely take this opportunity to practice ML.

### A curated list of resources

This person did an amazing job covering topics from classification and regression to deep learning and ensembles 

* [link](https://github.com/ujjwalkarn/Machine-Learning-Tutorials)

## External Datasets

### "Awesome Public Datasets"

A truly awesome collection of many kinds of public datasets, covering weather, economics, health and many more
* [link](https://github.com/caesar0301/awesome-public-datasets)


