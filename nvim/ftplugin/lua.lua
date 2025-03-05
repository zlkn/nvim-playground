MiniDeps.later(
	function()
		local lspconfig = require('lspconfig')
		lspconfig.lua_ls.setup({})
		print('Processed: after/ftplugin/lua.lua')
	end
)
