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
      - [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
      - [mason.nvim](https://github.com/williamboman/mason.nvim)
   - Syntax highlighting with [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
   - Completion engine [blink.cmp](https://github.com/Saghen/blink.cmp)
   - Convenient terminals through [toogleterm.nvim](https://github.com/akinsho/toggleterm.nvim)
   - Fuzzy file search [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim.git)
   - Git integration through
     [neogit](https://github.com/NeogitOrg/neogit) and
     [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
   - And more...
- Colorscheme: [catppuccin](https://github.com/catppuccin/nvim.git)
