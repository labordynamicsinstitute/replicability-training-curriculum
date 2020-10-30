# this sets things up

# define function to conditionally install packages

pkgTest <- function(x,try=FALSE)
{
        if (!require(x,character.only = TRUE))
        {
                install.packages(x,dep=TRUE)
                if(!require(x,character.only = TRUE)) stop("Package not found")
        }
        if ( try ) {
                print(paste0("Unloading ",x))
                detach(paste0("package:",x), unload = TRUE, character.only = TRUE)
        }
        return("OK")
}


# This is required to be run once per computer

start.libraries <- c("rprojroot")

results <- sapply(as.list(start.libraries), pkgTest,try=TRUE)
# from here on, simply install to project-specific lib

mran.date <- "2020-08-21"
options(repos=paste0("https://cran.microsoft.com/snapshot/",mran.date,"/"))



#Any libraries needed are called and if necessary installed through `libraries.R`:


basepath <- rprojroot::find_root(rprojroot::has_file("LICENSE.md"))

# Main directories
programs <- file.path(basepath,"programs")
libs <- file.path(basepath,".libs")

for ( dir in list(programs,libs)){
        if (file.exists(dir)){
        } else {
        dir.create(file.path(dir))
        }
}


# set the install path to the local

.libPaths(libs)


# call the function
global.libraries <- c("here","bookdown","tufte","dplyr","tidyr","config","ggplot2") 

results <- sapply(as.list(global.libraries), pkgTest,try=TRUE)

# load libraries

unload.libraries <- c("DT")

results <- sapply(as.list(unload.libraries), pkgTest, try=TRUE)


#require(knitr)

# define a few things

config <- config::get()

