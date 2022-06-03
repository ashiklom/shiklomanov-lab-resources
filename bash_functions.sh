#!/usr/bin/env bash

# Examples of useful bash shortcut functions
# Note that bash functions are executed like commands, e.g.:
#   mod_python

# Common modules -- what I have loaded by default
mod_common() {
  module purge
  module load vim/8.1.2233
  module load git/2.24.0
}

# Standard Python configuration
mod_python() {
  module purge
  mod_common
  module load python/GEOSpyD/Ana2019.10_py3.7
}

# Standard R configuration (version 3.6)
mod_r() {
  module purge
  mod_common
  module load R/3.6.3
  module load comp/gcc/9.2.0
  module load gdal/3.0.4
  # module load other/comp/gcc-4.8.1
  # Local libraries
  export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HOME/.local/lib
}

# R configuration (version 4.1)
mod_r4() {
  module purge
  mod_common
  module load R/4.1.0
  module load comp/gcc/9.2.0
  module load gdal/3.0.4
  # module load other/comp/gcc-4.8.1
  # Local libraries
  export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HOME/.local/lib
}

# R configuration, for R compiled from source
mod_rsrc() {
  module purge
  mod_common
  module load
  module load other/comp/gcc-9.1
  module load other/mpi/openmpi/4.0.1-gcc-9.1
}

# Shortcut for spinning up an interactive job
#   NOTE: ${1:-59} means "use the first argument; if no argument is passed, use the value 59".
#   Therefore, calling this function as just `interactive` will spawn a 59 minute job.
#   Calling this job with an argument, e.g., `interactive 240`, will spawn a 240 minute (4 hour) job.
#
#   NOTE: Be sure to replace <account> with an actual project code.
interactive() {
  srun -A <account> --pty --constraint="sky|cas|hasw" -t ${1:-59} bash
}
