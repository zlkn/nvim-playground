MiniDeps.add("williamboman/mason.nvim")
MiniDeps.later(
	function()
		local mason = require('mason')
		mason.setup({})
	end
)
