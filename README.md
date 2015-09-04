# Gene Synonym
An r package that works as a wrapper to synonym information in ftp://ftp.ncbi.nlm.nih.gov/gene/DATA/gene_info.gz.

Available species are
* Homo sapiens
* Mus musculus
* Rattus norvegicus
* Danio rerio
* Escherichia coli
* Caenorhabditis elegans
* Drosophila melanogaster
* Rhesus macaque

More species can be added on request

Installation
============
```r
library(devtools)
install_github('oganm/geneSynonym')
```

Usage
===========
```r
geneSynonym(c('Eno2','Mog'), 10090)

mouseSyno(c('Eno2','Mog'))

humanSyno('MOG')
```
