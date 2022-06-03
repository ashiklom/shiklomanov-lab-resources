# Onboarding materials

## Git

- Read [Pro Git][git]. I would prioritize chapters 1, 2, 3, 5, and 7. The rest of the chapters are a bit esoteric and probably more useful as reference material than primary documentation.

[git]: https://git-scm.com/book/en/v2

## Conda

- Work through the [conda tutorial][conda-tutorial]
- Read through [Managing conda environments][conda] and play around with creating your own environments. Pay particular attention to creating environments with YAML definition files — they are really useful to being able to quickly get up and running different computing systems.
- Once you have conda running, also install [mamba][mamba] and have a look at its documentation. It’s a drop-in replacement for conda that is >10x faster for many operations, so I would highly recommend it.

[conda-tutorial]: https://conda.io/projects/conda/en/latest/user-guide/getting-started.html
[conda]: https://conda.io/projects/conda/en/latest/user-guide/tasks/manage-environments.html
[mamba]: https://github.com/mamba-org/mamba#installation

## SLURM

The NASA Center for Climate Simulation (NCCS) uses SLURM as its queue submission system.

- [NCCS-specific SLURM documentation](https://www.nccs.nasa.gov/nccs-users/instructional/using-slurm)
- [Official SLURM documentation](https://slurm.schedmd.com/documentation.html) (much more dense and thorough)

Example SLURM script header:

```sh
#!/usr/bin/env bash
#SBATCH --account=<account name>
#SBATCH --constraint='sky|cas|hasw'
#SBATCH --output=logs/slurm-%J.log
#SBATCH --time=HH:MM:SS
#SBATCH --cpus-per-task=40    # Optional. Useful for setting minimum number of cores
#SBATCH --mem=64G             # Optional. Useful for setting minimum memory requirement

source ~/.bash_functions      # See "Other NCCS DISCOVER tips" section below for discussion of this
mod_python                    # If you are using Python
```

- Submit a job with `sbatch <job script>`. Note that the job script should be a shell script.
- Check the status of your currently submitted jobs: `squeue -u <username>`
  - To monitor this continuously: `watch squeue -u <username>`. Exit this with Control-C.
- Connect to a currently running job (e.g., to run `htop`): `srun --pty --jobid <jobid> bash`

## Other NCCS DISCOVER tips

- Check your SBU allocation: `allocation_check`
  - NOTE: This reports only the total allocation, not the number you've actually used. That isn't tracked. It's mostly useful to quickly see what projects are active and can be used for running jobs.
- Check your disk usage: `showquota -h`
- Use bash functions for common sets of modules. See my [`bash_functions.sh`](./bash_functions.sh) for some examples.
  - Create a file like `~/.bash_functions` on DISCOVER and add a line `source ~/.bash_functions` to your `~/.bashrc` file to use.
  - 

## Working in a command line environment

- Learn a terminal-based editor. I highly recommend vim / [Neovim](https://neovim.io/) -- it has a learning curve, but once you get the hang of it, it's extremely powerful. With some configuration, you can turn (Neo)vim into a fairly sophisticated IDE. Also, basic vim is available on almost any command line system.
  - Run `vimtutor` (or `:Tutor` command after starting vim/Neovim) to learn the basics of vim.
  - Both Vim and Neovim are highly extensible. Here is [my current Neovim configuration][my-nvim]. Alternatively, [kickstart.nvim][kickstart-nvim] is a good starting point for a new Neovim configuration with many advanced features enabled.

- Learn the basics of [readline interaction][readline] -- basically, keyboard shortcuts for editing commands. Not essential, but can be a significant quality of life improvement.

[my-nvim]: https://github.com/ashiklom/nvim-lua
[kickstart-nvim]: https://github.com/nvim-lua/kickstart.nvim
[readline]: https://www.gnu.org/software/bash/manual/html_node/Readline-Interaction.html

## Python

### Visualization and UI

- [Matplotlib](https://matplotlib.org/)
- [Seaborn](https://seaborn.pydata.org/)
- [HvPlot](https://hvplot.holoviz.org/)
- [Panel](https://panel.holoviz.org/)

### Geospatial analysis

- [Xarray](http://xarray.pydata.org/en/stable/) -- Working with labeled, multi-dimensional datasets like NetCDF 
- [Geopandas](https://geopandas.org/) -- Pandas-based geospatial analysis

### Data analysis

- [Pandas](https://pandas.pydata.org/) -- Analysis in data frames

### Other

- [Zarr](https://zarr.readthedocs.io/en/stable/) -- Alternative, cloud-optimized storage format to HDF5
- [Dask](https://docs.dask.org/en/latest/) -- Distributed computing in Python. Works natively with Pandas, Xarray, and others; also supports custom computing. 
