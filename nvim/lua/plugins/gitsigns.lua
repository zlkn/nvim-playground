-- MiniDeps.add('echasnovski/mini.diff')
-- MiniDeps.later(
-- 	function()
-- 		local diff = require('mini.diff')
-- 		diff.setup({
-- 		})
-- 	end
-- )

MiniDeps.add('lewis6991/gitsigns.nvim')
MiniDeps.later(
	function()
		local gitsigns = require('gitsigns')
		gitsigns.setup()
	end
)
