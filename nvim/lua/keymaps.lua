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
