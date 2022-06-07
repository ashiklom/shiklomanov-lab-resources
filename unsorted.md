# Other topics

# Git

- Read [Pro Git][git]. I would prioritize chapters 1, 2, 3, 5, and 7. The rest of the chapters are a bit esoteric and probably more useful as reference material than primary documentation.

[git]: https://git-scm.com/book/en/v2

# Working in a command line environment

- Learn a terminal-based editor. I highly recommend vim / [Neovim](https://neovim.io/) -- it has a learning curve, but once you get the hang of it, it's extremely powerful. With some configuration, you can turn (Neo)vim into a fairly sophisticated IDE. Also, basic vim is available on almost any command line system.
  - Run `vimtutor` (or `:Tutor` command after starting vim/Neovim) to learn the basics of vim.
  - Both Vim and Neovim are highly extensible. Here is [my current Neovim configuration][my-nvim]. Alternatively, [kickstart.nvim][kickstart-nvim] is a good starting point for a new Neovim configuration with many advanced features enabled.

- Learn the basics of [readline interaction][readline] -- basically, keyboard shortcuts for editing commands. Not essential, but can be a significant quality of life improvement.

[my-nvim]: https://github.com/ashiklom/nvim-lua
[kickstart-nvim]: https://github.com/nvim-lua/kickstart.nvim
[readline]: https://www.gnu.org/software/bash/manual/html_node/Readline-Interaction.html
