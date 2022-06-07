# NCCS DISCOVER

## Simplifying login

Add an entry like the following to your `~/.ssh/config`, replacing `myusername` with your username:

```
Host discover dirac
    User <USERNAME>
    LogLevel Quiet
    ProxyCommand ssh -I /usr/lib/ssh-keychain.dylib -l <USERNAME> login.nccs.nasa.gov direct %h.nccs.nasa.gov
    Protocol 2
    PKCS11Provider /usr/lib/ssh-keychain.dylib
```

Then, you can quickly login to DISCOVER with just `ssh discover`.
Note that this also applies to other SSH-based commands; e.g., for file transfers, you can now do `rsync /local/path discover:~/path/on/discover`.

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
- To chain jobs together, use the `--dependency=afterok:<jobid>` argument. For example:

  ```sh
  sbatch jobA.sh
  # Submitted batch job 58624704
  sbatch --dependency=afterok:58624704 jobB.sh
  ```

  This will start `jobB.sh` only after `jobA.sh` has successfully completed.

## Other NCCS DISCOVER tips

- Check your SBU allocation: `allocation_check`
  - NOTE: This reports only the total allocation, not the number you've actually used. That isn't tracked. It's mostly useful to quickly see what projects are active and can be used for running jobs.
- Check your disk usage: `showquota -h`
- Use bash functions for common sets of modules. See my [`bash_functions.sh`](bash_functions.sh) for some examples.
  - Create a file like `~/.bash_functions` on DISCOVER and add a line `source ~/.bash_functions` to your `~/.bashrc` file to use.
