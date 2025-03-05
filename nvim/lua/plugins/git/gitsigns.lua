MiniDeps.add('lewis6991/gitsigns.nvim')
MiniDeps.later(
	function()
		local gitsigns = require('gitsigns')
		gitsigns.setup()
	end
)
