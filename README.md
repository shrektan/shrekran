### `shrekran` is a R repo for shrektan

#### Purpose

We just need a good way to manage R packages for multiple machines and systems.

1. install multiple packages through internet network is slow and unpleasant,
1. github version pkgs need to complie and make it slower,
1. self-developped pkgs need to be installed differently,
1. upgrade pkgs for multiple machines is not easy,
1. some computers are not allowed to connect internet network or prohibited to connect network at all. In such cases, we have to copy tens of binary sources. And `packrat` itself is not enough, because some packages' building from source requires to download external files.
1. ...

#### Plan

1. use `miniCRAN` package to install CRAN version packages,
1. use `packrat`? to install the self developped packages,
1. build the binary version for both windows and OSX,
1. establish a sustaiable workflow
