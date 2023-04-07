local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'      -- Package Manger
  use 'RRethy/nvim-base16'          -- Color Theme
  use 'norcalli/nvim-colorizer.lua' -- Colorizer
  use 'nvim-lualine/lualine.nvim'   -- Status Line

  use 'hrsh7th/cmp-buffer'          -- nvim-cmp source for buffer words
  use 'hrsh7th/cmp-nvim-lsp'        -- nvim-cmp source for neovim's built-in LSP
  use 'hrsh7th/nvim-cmp'            -- Completion
  use 'onsails/lspkind-nvim'        -- Adds Vscode-like Pictograms
  use 'neovim/nvim-lspconfig'       -- LSP
  use 'glepnir/lspsaga.nvim'        -- LSP UIs
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'
  use 'L3MON4D3/LuaSnip'                -- Snippets
  use 'jose-elias-alvarez/null-ls.nvim' -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua
  use 'MunifTanjim/prettier.nvim'       -- Prettier plugin for Neovim's built-in LSP client

  use 'nvim-lua/plenary.nvim'           -- Common utilite
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'
  use 'nvim-tree/nvim-web-devicons' -- File icons

  use 'akinsho/nvim-bufferline.lua'
  use 'lewis6991/gitsigns.nvim' --
  use 'dinhhuy258/git.nvim'     -- For git blame & browse

  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'

  use 'tpope/vim-commentary' -- NeoVim commentary
end)
