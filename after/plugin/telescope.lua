local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>sf', builtin.find_files, {})
vim.keymap.set('n', '<leader>sg', builtin.git_files, {})
vim.keymap.set('n', '<leader>jl', builtin.jumplist, {})
vim.keymap.set('n', '<leader>bl', builtin.buffers, {})

vim.keymap.set('n', '<leader>st', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ")
})
end, {})

vim.keymap.set('n', '<leader>fr', function() builtin.lsp_references() end, { noremap = true, silent = true })


-- solution for truncation of file path in find references:
-- https://www.reddit.com/r/neovim/comments/13fuazn/lsp_references_in_telescope/
require('telescope').setup {
  pickers = {
	-- current_buffer_tags = { fname_width = 100, },
	-- jumplist = { fname_width = 100, },
	-- loclist = { fname_width = 100, },
	-- lsp_definitions = { fname_width = 100, },
	-- lsp_document_symbols = { fname_width = 100, },
	-- lsp_dynamic_workspace_symbols = { fname_width = 100, },
	-- lsp_implementations = { fname_width = 100, },
	-- lsp_incoming_calls = { fname_width = 100, },
	-- lsp_outgoing_calls = { fname_width = 100, },
	lsp_references = { fname_width = 100, },
	-- lsp_type_definitions = { fname_width = 100, },
	-- lsp_workspace_symbols = { fname_width = 100, },
	-- quickfix = { fname_width = 100, },
	-- tags = { fname_width = 100, },
  },
  extensions = {
    -- Your extension configuration goes here:
    -- extension_name = {
    --   extension_config_key = value,
    -- }
    -- please take a look at the readme of the extension you want to configure
  }
}
