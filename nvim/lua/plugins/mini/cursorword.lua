MiniDeps.add('echasnovski/mini.cursorword')
MiniDeps.later(
	function()
		local cursorword = require('mini.cursorword')
		cursorword.setup({})
	end
)
