vim.g.mapleader = " "



-- NORMAL MODE REMAPS

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- delete everything inside the double quotes (or including quotes)
vim.keymap.set("n", "diq", "F\"lvf\"hd") 
vim.keymap.set("n", "daq", "F\"df\"")

-- copy everything inside the double quotes (or including quotes)
vim.keymap.set("n", "yiq", "F\"lvf\"hy")
vim.keymap.set("n", "yaq", "F\"yf\"")



-- VISUAL MODE REMAPS

-- moving selected block of code up or down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
