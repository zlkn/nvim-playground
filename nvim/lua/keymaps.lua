vim.keymap.set("n", "<S-Enter>", "<C-d>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-Enter>", "<C-u>", { noremap = true, silent = true })

-- Keymaps for run lua code in selection
vim.keymap.set("n", "<leader>rx", "<cmd>source %<CR>")
vim.keymap.set("v", "<leader>rx", ":.lua<CR>")

-- Telescope
-- vim.keymap.set('n', '<leader><leader>', builtin.find_files, { desc = 'Telescope find files' })
-- vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
-- vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
-- vim.keymap.set('n', '<leader>/', builtin.live_grep, { desc = 'Telescope live grep' })
-- vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
-- vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
