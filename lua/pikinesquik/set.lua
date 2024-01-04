-- relative line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- make clipboard common with the system's one
vim.opt.clipboard = "unnamedplus"

vim.opt.smartindent = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.scrolloff = 8

vim.cmd [[highlight ColorColumn ctermbg=8 guibg=lightgrey]]
