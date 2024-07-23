--Core
require('core.plugins')
require('core.colorscheme')
require('core.settings')
require('core.keymaps')

--Plugins
require('plugins.treesitter')
require('plugins.lsp')

require('lualine').setup()
