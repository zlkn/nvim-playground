MiniDeps.add('sindrets/diffview.nvim')
MiniDeps.later(
	function()
		local actions = require('diffview')
		actions.setup()
	end
)
