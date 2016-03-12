rm(list=ls(all=TRUE)) #Clear the memory of variables from previous run. This is not called by knitr, because it's above the first chunk.
cat("\f") # clear console



# @knitr load_packages
library(dplyr) # for data manipulation
library(ggplot2) # for graphing
library(tidyr) # for data manipulation
library(extrafont) # for customm theme

# @knitr load_sources --------------------------------------- 
# source("https://raw.githubusercontent.com/andkov/psy532/master/scripts/graphs/main_theme.R") # cosmetics
source("./scripts/main_theme.R")
# source("https://raw.githubusercontent.com/andkov/areaF/master/scripts/areaF_graphing.R") # graph-making
source("./scripts/areaF_graphing.R")



# source("./scripts/graphs/main_theme.R") # cosmetics
# source("./scripts/areaF_graphing.R") # graph-making

# @knitr declare_globals ---------------------------------------

# @knitr generate_data ---------------------------------------

# load custom functions
source("http://statpower.net/Content/312/R%20Stuff/Steiger%20R%20Library%20Functions.txt")

# Generate data for classroom examples 
N <- 30 # observations
p <- 4 # variables 
varnames<-c("Intelligence"="iq",
            "Socio-Economic Status"="ses",
            "Parent Education"="parent_edu",
            "Cost of House"="house_cost")
varmeans <- c(100, 7, 15, 272.9) # assign the values of the means
varstds  <- c(15,  3, 3,   70.0) # and standard deviations 

# target correlation matrix                  IQ
correlations <- CompleteCorrelationMatrix(c(.20,#SES
                                            .13,.10,#PEd
                                            .12,.10,.15))#CoH
colnames(correlations) <- varnames # label columns
rownames(correlations) <- varnames # label rows
# rescale correlations into covariances
covariances <- diag(varstds) %*% correlations %*% diag(varstds)

# generate data using Steiger's custom functions
X <- MakeExactData(varmeans, covariances, N)
colnames(X)<-varnames; rownames(X)<-c(1:N) # label columns and rows
X <- data.frame(X) # create dataframe
summary(X) # gets basic descriptives of data
cor(X) # output correlations
correlations # input correlations
ds <- X

# @knitr load_data ---------------------------------------
# source("./scripts/generate_correlated_data.R")

# @knitr tweak_data ---------------------------------------

# @kntir basic_table ---------------------------------------

# @knitr basic_graph ---------------------------------------
# use function defined in ./scripts/areaF_graphing.R
# areaF(EF, dfF, ER, dfR )
# areaF(6136.292, 26, 6525, 29 )
# @knitr new_chunk ---------------------------------------

# 
# 
# rm(list=ls(all=TRUE)) # clear environment
# cat("\f") # clear console
# library(ggplot2) # load ggplot2 package for graphing
# # load areaF function
source("./scripts/graphs/areaF_graphing.R")
areaF(6136, 26, 6525, 29 )



# @knitr reproduce ---------------------------------------
  rmarkdown::render(input = "./reports/basic/basic.Rmd" ,
                    output_format="html_document", clean=TRUE)