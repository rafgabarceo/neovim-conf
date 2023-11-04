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
})

require("lspconfig").svlangserver.setup({})

-- Taken from https://github.com/neovim/nvim-lspconfig/issues/2733#issuecomment-1732637048
local util = require'lspconfig.util'
require("lspconfig").gopls.setup({
   -- ...some other setups
   root_dir = function(fname)
      -- see: https://github.com/neovim/nvim-lspconfig/issues/804
      local mod_cache = vim.trim(vim.fn.system 'go env GOMODCACHE')
      if fname:sub(1, #mod_cache) == mod_cache then
         local clients = vim.lsp.get_active_clients { name = 'gopls' }
         if #clients > 0 then
            return clients[#clients].config.root_dir
         end
      end
      return util.root_pattern 'go.work'(fname) or util.root_pattern('go.mod', '.git')(fname)
   end,
})
require("lspconfig").html.setup({})
require("lspconfig").bashls.setup({})
require("lspconfig").cssls.setup({})
require("lspconfig").tsserver.setup({})
require("lspconfig").pylsp.setup({})
require("lspconfig").intelephense.setup({})
require("lspconfig").clangd.setup({})

