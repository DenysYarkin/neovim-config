local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  lsp_zero.default_keymaps({buffer = bufnr})

end)

require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {'lua_ls', 'jedi_language_server', 'clangd'},
  handlers = {
    lsp_zero.default_setup,
  },
})

require'lspconfig'.metals.setup{}
