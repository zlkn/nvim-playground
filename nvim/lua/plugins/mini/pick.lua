MiniDeps.add('echasnovski/mini.pick')
MiniDeps.later(
	function()
		require('mini.pick').setup({})

		vim.keymap.set(
			'n',
			'<leader><leader>',
			function() MiniPick.builtin.files() end,
			{desc = 'fzf picker for files'}
		)
		vim.keymap.set(
			'n',
			'<leader>/',
			function() MiniPick.builtin.grep_live() end,
			{desc = 'fzf live grep'}
		)
		vim.keymap.set(
			'n',
			'<leader>,',
			function() MiniPick.builtin.buffers() end,
			{ desc = 'fzf picker for buffers'}
		)
	end

)
