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

TODO: NCCS-specific gotchas.

## Working in a command line environment

- Learn a terminal-based editor. I highly recommend vim / [Neovim](https://neovim.io/) -- it has a learning curve, but once you get the hang of it, it's extremely powerful. With some configuration, you can turn (Neo)vim into a fairly sophisticated IDE. Also, basic vim is available on almost any command line system.
  - Run `vimtutor` (or `:Tutor` command after starting vim/Neovim) to learn the basics of vim.
  - Both Vim and Neovim are highly extensible. Here is [my current Neovim configuration][my-nvim]. Alternatively, [kickstart.nvim][kickstart-nvim] is a good starting point for a new Neovim configuration with many advanced features enabled.

[my-nvim]: https://github.com/ashiklom/nvim-lua
[kickstart-nvim]: https://github.com/nvim-lua/kickstart.nvim

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
