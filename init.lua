vim.g.mapleader=" "

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  'morhetz/gruvbox',
  'navarasu/onedark.nvim',
  'ThePrimeagen/vim-be-good',
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' }
})

require('colorscheme')
require('plugins')
require('settings')
require('keymaps')
require('treesitter')
require('lualine').setup()
