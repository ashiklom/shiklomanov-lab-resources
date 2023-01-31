# Other topics

## General best practices 

- [Wilson et al. 2014][wilson2014] --- "Best practices for scientific computing"
- [Wilson et al. 2017][wilson2017] --- "Good enough practices for scientific computing"
- [Bond-Lamberty et al. 2016][bondlamberty2016] --- "Running an open experiment: transparency and reproducibility in soil and ecosystem science"].

[wilson2014]: https://journals.plos.org/plosbiology/article?id=10.1371/journal.pbio.1001745
[wilson2017]: https://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1005510
[bondlamberty2016]: https://iopscience.iop.org/article/10.1088/1748-9326/11/8/084004/meta

## Readings on open science

- [Bond-Lamberty 2018][bondlamberty2018] --- "Data Sharing and Scientific Impact in Eddy Covariance Research"
- [Kaiser & Brainard 2023][kaiser2023] --- "Ready, set, share! As funders roll out new requirements for making data freely available, researchers weigh costs and benefits"
- [Gomes et al. 2022][gomes2022] --- "Why don't we share data and code? Perceived barriers and benefits to public archiving practices"
- [Barker et al. 2022][barker2022] --- "Introducing the FAIR Principles for research software"
- [Nowogrodzki 2019][nowogrodzki2019] --- "How to support open-source software and stay sane"

[bondlamberty2018]: https://agupubs.onlinelibrary.wiley.com/doi/10.1002/2018JG004502
[gomes2022]: https://royalsocietypublishing.org/doi/10.1098/rspb.2022.1113
[kaiser2023]: https://www.science.org/content/article/ready-set-share-researchers-brace-new-data-sharing-rules
[barker2022]: https://www.nature.com/articles/s41597-022-01710-x
[nowogrodzki2019]: https://www.nature.com/articles/d41586-019-02046-0

## Git

- Read [Pro Git][git]. I would prioritize chapters 1, 2, 3, 5, and 7. The rest of the chapters are a bit esoteric and probably more useful as reference material than primary documentation.

[git]: https://git-scm.com/book/en/v2

## Working in a command line environment

- Learn a terminal-based editor. I highly recommend vim / [Neovim](https://neovim.io/) -- it has a learning curve, but once you get the hang of it, it's extremely powerful. With some configuration, you can turn (Neo)vim into a fairly sophisticated IDE. Also, basic vim is available on almost any command line system.
  - Run `vimtutor` (or `:Tutor` command after starting vim/Neovim) to learn the basics of vim.
  - Both Vim and Neovim are highly extensible. Here is [my current Neovim configuration][my-nvim]. Alternatively, [kickstart.nvim][kickstart-nvim] is a good starting point for a new Neovim configuration with many advanced features enabled.

- Learn the basics of [readline interaction][readline] -- basically, keyboard shortcuts for editing commands. Not essential, but can be a significant quality of life improvement.

[my-nvim]: https://github.com/ashiklom/nvim-lua
[kickstart-nvim]: https://github.com/nvim-lua/kickstart.nvim
[readline]: https://www.gnu.org/software/bash/manual/html_node/Readline-Interaction.html
