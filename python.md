# Python

## Useful libraries

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

## Environment management with conda

- Work through the [conda tutorial][conda-tutorial]
- Read through [Managing conda environments][conda] and play around with creating your own environments. Pay particular attention to creating environments with YAML definition files — they are really useful to being able to quickly get up and running different computing systems.
- Once you have conda running, also install [mamba][mamba] and have a look at its documentation. It’s a drop-in replacement for conda that is >10x faster for many operations, so I would highly recommend it.

[conda-tutorial]: https://conda.io/projects/conda/en/latest/user-guide/getting-started.html
[conda]: https://conda.io/projects/conda/en/latest/user-guide/tasks/manage-environments.html
[mamba]: https://github.com/mamba-org/mamba#installation
