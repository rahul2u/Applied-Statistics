##source_https(): Sourcing an R Script from github over HTTPS


source_https <- function(u, unlink.tmp.certs = FALSE) {
  # load package
  require(RCurl)
  
  # read script lines from website using a security certificate
  if(!file.exists("cacert.pem")) download.file(url="http://curl.haxx.se/ca/cacert.pem", destfile = "cacert.pem")
  script <- getURL(u, followlocation = TRUE, cainfo = "cacert.pem")
  if(unlink.tmp.certs) unlink("cacert.pem")
  
  # parase lines and evealuate in the global environement
  eval(parse(text = script), envir= .GlobalEnv)
}

##Load the sourceHttps.R Function your R invironment
source("sourceHttps.R")
## Loas a r Scripts code form https site using  sourceHttps.R Funtions
source_https("https://raw.githubusercontent.com/NicoleRadziwill/R-Functions/master/shadenorm.R")

## Using lodead function in R Invironment
shadenorm()
