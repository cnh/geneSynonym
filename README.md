
[![Build Status](https://travis-ci.org/oganm/geneSynonym.svg?branch=master)](https://travis-ci.org/oganm/geneSynonym) [![codecov](https://codecov.io/gh/oganm/geneSynonym/branch/master/graph/badge.svg)](https://codecov.io/gh/oganm/geneSynonym)

Gene Synonym
============

An r package that works as a wrapper to synonym information in <ftp://ftp.ncbi.nlm.nih.gov/gene/DATA/gene_info.gz>. Updates weekly since 8th of Match 2017

Available species are

-   Homo sapiens
-   Mus musculus
-   Rattus norvegicus
-   Danio rerio
-   Escherichia coli
-   Caenorhabditis elegans
-   Drosophila melanogaster
-   Rhesus macaque

More species can be added on request

Installation
============

``` r
library(devtools)
install_github('oganm/geneSynonym')
```

Usage
=====

The output is a nested list since gene synonyms are not nececarilly unique. For instance

``` r
mouseSyno('Tex40')
```

    ## $Tex40
    ## $Tex40$`16528`
    ## [1] "Kcnk4"    "Catsperz" "MLZ-622"  "TRAAK"    "TRAAKt"   "Tex40"   
    ## 
    ## $Tex40$`67077`
    ## [1] "Catsperz"      "1700019N12Rik" "A430107B04Rik" "MLZ-622"      
    ## [5] "Tex40"

Names of vectors within the list are NCBI ids.

Input is a vector of gene names/NCBI ids and a tax identifier. Alternatively shorthand functions exist for human and mouse.

``` r
geneSynonym(c('Eno2','Mog'), tax = 10090)
```

    ## $Eno2
    ## $Eno2$`13807`
    ## [1] "Eno2"       "AI837106"   "D6Ertd375e" "Eno-2"      "NSE"       
    ## 
    ## 
    ## $Mog
    ## $Mog$`17441`
    ## [1] "Mog"           "B230317G11Rik"

``` r
geneSynonym(c('Eno2','Mog'), tax = 10090)
```

    ## $Eno2
    ## $Eno2$`13807`
    ## [1] "Eno2"       "AI837106"   "D6Ertd375e" "Eno-2"      "NSE"       
    ## 
    ## 
    ## $Mog
    ## $Mog$`17441`
    ## [1] "Mog"           "B230317G11Rik"

``` r
mouseSyno(c('Eno2',17441))
```

    ## $Eno2
    ## $Eno2$`13807`
    ## [1] "Eno2"       "AI837106"   "D6Ertd375e" "Eno-2"      "NSE"       
    ## 
    ## 
    ## $`17441`
    ## $`17441`$`17441`
    ## [1] "Mog"           "B230317G11Rik"

``` r
humanSyno('MOG')
```

    ## $MOG
    ## $MOG$`4340`
    ## [1] "MOG"    "BTN6"   "BTNL11" "MOGIG2" "NRCLP7"
