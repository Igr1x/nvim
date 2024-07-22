vim.g.mapleader=" "

--в режиме поиска убираем выделение
vim.keymap.set('n', '<esc>', ':nohlsearch<CR>', { noremap = true, silent = true })
--в visual режиме менеям местами выделенные блок кода
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")
vim.api.nvim_set_keymap('n', ',ff', "<cmd>lua require('telescope.builtin').find_files()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', ',fg', "<cmd>lua require('telescope.builtin').live_grep()<CR>", { noremap = true, silent = true })
