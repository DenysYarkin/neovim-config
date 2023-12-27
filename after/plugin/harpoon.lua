local harpoon = require("harpoon")


harpoon:setup()

vim.keymap.set("n", "<leader>a", function() harpoon:list():append() end)
vim.keymap.set("n", "<C-p>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

vim.keymap.set("n", "<leader>f0", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<leader>f9", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<leader>f8", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<leader>f7", function() harpoon:list():select(4) end)
