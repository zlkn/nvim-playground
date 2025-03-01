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

require("keymaps")
require("options")
require("autocmds")
require("plugins.colorscheme")
require("plugins.lualine")
require("plugins.blink")
require("plugins.flash")
-- require("plugins.telescope")
require('plugins.lazydev')
require('plugins.mini')

MiniDeps.add({ source = 'echasnovski/mini.pairs' })
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


-- Keymaps
-- Enhance buffer scroling
vim.keymap.set("n", "<S-Enter>", "<C-d>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-Enter>", "<C-u>", { noremap = true, silent = true })

-- Keymaps for run lua code in selection
vim.keymap.set("n", "<leader>rx", "<cmd>source %<CR>", {desc = "Execute lua code"})
vim.keymap.set("v", "<leader>rx", ":.lua<CR>", { desc = "Execute lua code"})

-- Split window
vim.keymap.set('n', '<leader>\\', '<cmd>vsplit<CR>', { desc = 'Split vertial' })
vim.keymap.set('n', '<leader>-', '<cmd>split<CR>', { desc = 'Split horisontal' })

-- Jump
vim.keymap.set("n", "<C-h>", "<C-w>h", { silent = true })
vim.keymap.set("n", "<C-j>", "<C-w>j", { silent = true })
vim.keymap.set("n", "<C-k>", "<C-w>k", { silent = true })
vim.keymap.set("n", "<C-l>", "<C-w>l", { silent = true })
vim.keymap.set('n', 'H', ':bnext<CR>', { noremap = true, silent = true })
vim.keymap.set('n', 'L', ':bprev<CR>', { noremap = true, silent = true })

-- Exit
-- Map <leader>qq to exit without saving
vim.keymap.set('n', '<leader>qq', ':q!<CR>', { desc = "Exit without saving", noremap = true, silent = true })
-- Map <leader>wq to save and then exit
vim.keymap.set('n', '<leader>wq', ':wq<CR>', { desc = "Save and Exit", noremap = true, silent = true })

