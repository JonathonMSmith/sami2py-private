[![Build Status](https://travis-ci.com/jklenzing/sami2py.svg?branch=develop)](https://travis-ci.com/jklenzing/sami2py)

# Overview

Sami2py is a python module that runs the SAMI2 model, as well as archives, loads and plots the resulting modeled values. SAMI2 is a model developed by the Naval Research Laboratory to simulate the motions of plasma in a 2D ionospheric environment along a dipole magnetic field [Huba et al, 2000].  SAMI2 solves for the chemical and dynamical evolution of seven ion species in this environment (H<sup>+</sup>, He<sup>+</sup>, N<sup>+</sup>, O<sup>+</sup>, N<sub>2</sub><sup>+</sup>, NO<sup>+</sup>, and O<sub>2</sub><sup>+</sup>).

The implementation used here includes several added options to the original release of SAMI2.  A full list is included in ***add link to changes page***, but several of these include:
 - The ability to scale the neutral atmosphere in which the ions form through direct modification of the exospheric neutral temperature for extreme solar minimum conditions, as discussed by Emmert et al [20??].  
 - The ability to switch between HWM93, HWM07, and HWM14 as a user option.
 This implementation is based on the version used in Klenzing et al [2013].

# Installation

First, checkout the repository:

```
  $ git clone git@gitlab.com:jklenzing/sami2py.git;
```

Change directories into the repository folder and run the setup.py file.  For
a local install use the "--user" flag after "install".

```
  $ cd sami2py/
  $ python setup.py install
```

Additionally, you must make and install the fortran executables.

```
  $ make -C sami2py/fortran compile
```

Now you can run the sami2 executable (sami2low.x) from anywhere.

# Example

In iPython, run:

```
  $ import sami2py
  $ sami2py.run_model(year=2012, day=210, lon=0, tag='test')
```
Note that the sami2 model runs for 24 hours to clear transients, then begins to output data.

Now load the resultant data:

```
  $ ModelRun = sami2py.model(tag='test', lon=0, year=2012, day=210)
```

Plotting features coming soon...

# How to Cite
When referring to this software package, please cite the original paper by Huba et al [2000] https://doi.org/10.1029/2000JA000035 as well as the package by Klenzing et al [2018]. ***add doi here***.

Additionally, please include the following text in the acknowledgements: "This
work uses the SAMI2 ionosphere model written and developed by the Naval Research Laboratory."

# References
- Huba, J.D., G. Joyce, and J.A. Fedder, Sami2 is Another Model of the Ionosphere (SAMI2): A new low‐latitude ionosphere model, *J. Geophys. Res.*, 105, Pages 23035-23053, https://doi.org/10.1029/2000JA000035, 2000.
- Emmert et al, 20??
- Klenzing, J., Burrell, A. G., Heelis, R. A., Huba, J. D., Pfaff, R., and Simões, F.: Exploring the role of ionospheric drivers during the extreme solar minimum of 2008, *Ann. Geophys.*, 31, 2147-2156, https://doi.org/10.5194/angeo-31-2147-2013, 2013.
