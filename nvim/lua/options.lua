vim.g.mapleader = ' '

vim.o.mouse       = 'a' -- Enable mouse support

-- Don't spawn trash on fs
vim.o.undofile    = true  -- Enable persistent undo (see also `:h undodir`)
vim.o.backup      = false -- Don't store backup while overwriting the file
vim.o.writebackup = false -- Don't store backup while overwriting the file


-- UI options
vim.o.number = true

vim.o.cmdheight = 0 
vim.o.scrolloff = 5
vim.o.cursorline = true

vim.o.breakindent   = true    -- Indent wrapped lines to match line start
vim.o.wrap          = false   -- Display long lines as just one line

vim.o.signcolumn    = 'yes'   -- Always show sign column (otherwise it will shift text)
vim.o.fillchars     = 'eob: ' -- Don't show `~` outside of buffer


vim.opt.clipboard = "unnamedplus"


    -- Editing
vim.o.ignorecase  = true -- Ignore case when searching (use `\C` to force not doing that)
vim.o.incsearch   = true -- Show search results while typing
vim.o.infercase   = true -- Infer letter cases for a richer built-in keyword completion
vim.o.smartcase   = true -- Don't ignore case when searching if pattern has upper case
vim.o.smartindent = true -- Make indenting smart

vim.o.completeopt   = 'menuone,noselect' -- Customize completions
vim.o.virtualedit   = 'block'            -- Allow going past the end of line in visual block mode
vim.o.formatoptions = 'qjl1'             -- Don't autoformat comments

