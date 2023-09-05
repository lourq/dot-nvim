local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'

  use 'neovim/nvim-lspconfig'                                  -- lsp

  use 'onsails/lspkind.nvim'                                   -- vscode-like pictograms
  use 'hrsh7th/nvim-cmp'                                       -- compliteon plugin
  use 'hrsh7th/cmp-buffer'                                     -- nvim-cmp source for buffer words
  use 'hrsh7th/cmp-nvim-lsp'                                   -- nvim-cmp source for neovim builtin LSP client
  use('nvimdev/lspsaga.nvim')                                  -- lsp enhance plugin
  use 'jose-elias-alvarez/null-ls.nvim'
  use 'L3MON4D3/LuaSnip'                                       -- snippet engine for neovim

  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' } -- highlight
  use 'windwp/nvim-autopairs'                                  -- autopairs for neovim
  use 'windwp/nvim-ts-autotag'                                 -- auto close and auto rename

  use 'nvim-lua/plenary.nvim'                                  -- common utilites
  use 'nvim-telescope/telescope.nvim'                          -- fuzzy finder
  use 'nvim-telescope/telescope-file-browser.nvim'             -- file browser extension

  use 'RRethy/nvim-base16'                                     -- colorstheme
  use 'norcalli/nvim-colorizer.lua'                            -- colorizer
  use 'nvim-tree/nvim-web-devicons'                            -- icons
  use 'nvim-lualine/lualine.nvim'                              -- statusline
  use 'akinsho/bufferline.nvim'                                -- bufferline

  use 'terrortylor/nvim-comment'
  use 'mfussenegger/nvim-dap'
  use 'rcarriga/nvim-dap-ui'
  use 'lewis6991/gitsigns.nvim'
  use 'dinhhuy258/git.nvim'
end)
