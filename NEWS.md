# rbi 0.9.1

* Fixed a bug in `bi_generate_dataset`
* Fixed chaining when there are no variables to chain

# rbi 0.9.0

* Fixed a few bugs when working with multiple dimensions
* New functions: `join` and `logLik`
* Save supplement when saving a `libbi` option
* Fixed the `dry` option
* Fixed handling of `without` options
* Fixed handling of `predict` function

# rbi 0.8.0

* `supplement` option to `save_libbi` to store supplementary information
* Temporary directories are now removed when quitting R or collecting garbage
* Improved chaining of `libbi` calls
* New `attach_file` function, a more general version of the former `add_output`
* New `file` option for `bi_read`
* Fixed problems with `predict`
* Fixed add_output when passed a list
* Fixed a bug in writing observation files; extra dimensions are now written in the correct order
* Improved writing of observation files with `ns` or other dimensions
* Improved error handling: `libbi` calls now finish and yield a warning if the call to the libbi executable fails; this makes it possible to inspect the object to diagnoise the problem

# rbi 0.7.0

* The class is now based on S3 classes. Because of this, it plays much nicer with the magrittr and related packages. There are now `str` and `summary` methods defined for `libbi` objects, and `sample`, `filter` and `optimise` commands for running LibBi
* Caching is now supported: multiple calls to `bi_read` are much faster
* added a testing suite
* Fixed bug in `bi_read` when reading variables with one dimension
* `bi_generate_dataset` now has a seed option
* `extract_sample` function for extracting a single sample from a NetCDF file
* new `add_output` option for reconstructing `libbi` objects
* cleaned up code and removed obsolete functions
* Many smaller bug fixes

# rbi 0.6.0

* `bi_contents` to quickly get the variables in an NetCDF file
* `generate_seed` to generate a seed for a `libbi` run
* new `sample_obs` option to `libbi$run`, to sample posterior observations
* improved option handling; there is now only one 'options' option
* overloaded subset operators in `bi_model`
* no more `result` field in the `libbi` object
* new vignette: Introduction to rbi
* Fixed bug in `bi_model$get_vars` that didn't remove all spaces
* Fixed bug in reading in the coord dimension(s) in `bi_read`
* Fixed bug in `bi_model$fix` that ignored input variables

# rbi 0.5.0

* `client` is now an option to `libbi$run`
* Fix bug in parsing options in `libbi$initialize`
* Fix bug in `get_traces` if there is only one sample
* `bi_model$insert_lines` can now work with blocks
* Improve cloning, where all initialising parameters can now be passed

# rbi 0.4.1

* Change package name to lower case
* Tidy up for CRAN submission
* Fix finding libbi path
* Fix handling of config options (#2, @tyler-abbot)
* Fix options in `bi_generate_dataset` (#3, #5, @tyler-abbot)
* Fix demos (#1, #6, @tyler-abbot)
* Remove `stringr` dependency

# rbi 0.4

* Guess time dimension in netCDF files
* Bug fixes to better deal with multiple coordinate variables
* `burnin` option to `get_traces`
* Reduce memory use when thinning

# rbi 0.3

* Bug fixes in `bi_write`
* Improve dealing with different types of dimensions, including introduction of the `coord_dim` option in `bi_write`
* `bi_generate_dataset` now returns observations
* Remove `Rcpp` dependency

# rbi 0.2

* Remove C code and use `ncdf4` package for interaction with netCDF files
* Introduce the `bi_model` class to manipulate models
* Allow giving `init`, `obs` and `input` as R objects
* Rename `bi_wrapper` to `libbi`
* Improved `bi_read` function to directly read from `libbi` objects

# rbi 0.1

* initial version
