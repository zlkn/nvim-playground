local path_package = vim.fn.stdpath('data') .. '/site/'
local mini_path = path_package .. 'pack/deps/start/mini.nvim'
	if not vim.loop.fs_stat(mini_path) then
	  vim.cmd('echo "Installing `mini.nvim`" | redraw')
	  local clone_cmd = { 'git', 'clone', '--filter=blob:none', 'https://github.com/echasnovski/mini.nvim', mini_path }
	  vim.fn.system(clone_cmd)
	  vim.cmd('echo "Installed `mini.nvim`" | redraw')
	end

-- Set up 'mini.deps' (customize to your liking)
require('mini.deps').setup({ path = { package = path_package } })

-- Use 'mini.deps'. `now()` and `later()` are helpers for a safe two-stage
-- startup and are optional.
local add, now, later = MiniDeps.add, MiniDeps.now, MiniDeps.later

require("keymaps")
require("options")
require("autocmds")
require("plugins.colorscheme")
require("plugins.lualine")
require("plugins.blink")
require("plugins.flash")
require("plugins.telescope")
require('plugins.lazydev')

add('echasnovski/mini.clue')
require('mini.clue').setup({})

add({ source = 'echasnovski/mini.move' })
require('mini.move').setup({})

add({ source = 'echasnovski/mini.files' })
require('mini.files').setup({})

add({ source = 'echasnovski/mini.pairs' })
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

