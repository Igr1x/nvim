vim.g.mapleader=" "

vim.opt.number=true
vim.opt.relativenumber=true
vim.opt.termguicolors=true
vim.opt.swapfile=false
vim.opt.clipboard='unnamedplus'

--в режиме поиска убираем выделение
vim.keymap.set('n', '<esc>', ':nohlsearch<CR>', { noremap = true, silent = true })
--в visual режиме менеям местами выделенные блок кода
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")


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
require('lualine').setup()
