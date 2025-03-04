MiniDeps.add({ source = 'echasnovski/mini.pairs' })
MiniDeps.later(
function()
	require('mini.pairs').setup({
	  -- skip autopair when next character is one of these
	  skip_next = [=[[%w%%%'%[%"%.%`%$]]=],
	  -- skip autopair when the cursor is inside these treesitter nodes
	  skip_ts = { "string" },
	  -- skip autopair when next character is closing pair
	  -- and there are more closing pairs than opening pairs
	  skip_unbalanced = true,
	  -- better deal with markdown code blocks
	  markdown = true,
	})
end
)

