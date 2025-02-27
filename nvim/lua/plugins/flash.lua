MiniDeps.add({ source = 'folke/flash.nvim', })
vim.api.nvim_set_keymap("n", "s", ":lua require('flash').jump('')<CR>", { noremap = true, silent = true })
