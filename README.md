
<!-- README.md is generated from README.Rmd. Please edit that file -->
An R Interface to OpenLayers
============================

[![Travis-CI Build Status](https://travis-ci.org/crazycapivara/openlayers.svg?branch=master)](https://travis-ci.org/crazycapivara/openlayers) [![Travis-CI Build Status](https://travis-ci.org/crazycapivara/openlayers.svg?branch=develop)](https://travis-ci.org/crazycapivara/openlayers)

[OpenLayers](https://openlayers.org/) is an open-source JavaScript library *making it easy to put a dynamic map in any web page*. The goal of the openlayers R package is to make this functionality available within R via the [htmlwidgets](https://github.com/ramnathv/htmlwidgets) package. Please note this package is still a beta version (check [NEWS](NEWS.md) file for available functionality).

Installation
------------

You can install openlayers from github with:

``` r
# install.packages("devtools")
devtools::install_github("crazycapivara/openlayers")

# latest version
devtools::install_github("crazycapivara/openlayers", ref = "develop")
```

Examples
--------

Here we go with some basic examples:

``` r
library(openlayers)
#> openlayers 0.4.1 wrapping openlayersjs v4.3.1
```

``` r
ol() %>% add_stamen_tiles() %>% set_view(9.5, 51.31667, zoom = 10)

require("geojsonio")

ol()  %>% add_stamen_tiles() %>%
  add_geojson(
    geojson_json(us_cities[1:10, ]),
    style = marker_style()
  )

require("sf")

nc = st_read(system.file("gpkg/nc.gpkg", package = "sf"), quiet = TRUE)

ol() %>% add_stamen_tiles("watercolor") %>%
  add_stamen_tiles("terrain-labels") %>%
  add_vector_data(nc) %>%
  add_overview_map()
```

Documentation
-------------

A detailed documentation of the package is still under development, but all functions are documented, so that you can use the build in help functionality of R. Furthermore, check the example scripts in [inst/examples/](inst/examples/) to get an idea about how to use this package.
