local lspconfig = require('lspconfig')
lspconfig.rust_analyzer.setup {
  settings = {
    ['rust-analyzer'] = {
	diagnostic = {
		enable = true,
		experimental = {
			enable = true
		},
	},
    },
  },
}
