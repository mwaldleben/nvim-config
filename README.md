# My Neovim Configuration

This repository contains my personal Neovim configuration.

![My Neovim Setup](showcase.png)

## Installation

1. **Clone this repository:**

```bash
git clone https://github.com/morwald/nvim.git ~/.config/nvim
```

2. **Launch Neovim:**

Open Neovim by running nvim in your terminal. The plugin manager
[lazy.nvim](https://github.com/folke/lazy.nvim) will automatically trigger the
installation of plugins on the first launch.

## Features

- Organized configuration setup with [lazy.nvim](https://github.com/folke/lazy.nvim)
- Utilizes various plugins for enhanced functionality:
   - LSP integration with easy installation of servers, formatting, and linting:
      - [mason.nvim](https://github.com/williamboman/mason.nvim)
      - [lsp-zero.nvim](https://github.com/VonHeikemen/lsp-zero.nvim.git)
      - [none-ls.nvim](https://github.com/nvimtools/none-ls.nvim) (null-ls successor)
   - Syntax highlighting with [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
   - Convenient terminals through [toogleterm.nvim](https://github.com/akinsho/toggleterm.nvim)
   - Fuzzy file search [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim.git)
   - A bufferline with [nvim-cokeline](https://github.com/willothy/nvim-cokeline.git).
   - Git integration through
     [neogit](https://github.com/NeogitOrg/neogit) and
     [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
   - And more...
- Leader key focused keymaps
- Colorscheme: [catppuccin](https://github.com/catppuccin/nvim.git)
