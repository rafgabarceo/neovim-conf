local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)

require("mason").setup({})
require("mason-lspconfig").setup(
{
    ensure_installed = {
	"svlangserver",
	"gopls",
	"html",
	"bashls",
	"cssls",
	"tsserver",
	"pylsp",
	"intelephense",
	"clangd"
    },
    handlers = {
	lsp_zero.default_setup,
    }
})
