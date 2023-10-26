local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup({
	{"nvim-telescope/telescope.nvim", tag="0.1.4", dependencies={"nvim-lua/plenary.nvim"}},
	{"folke/tokyonight.nvim", lazy = false, priority = 10000, opts = {}},
	{"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
	{"mbbill/undotree"},
	{"tpope/vim-fugitive"},
	{"williamboman/mason.nvim"},
	{'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
	{'williamboman/mason.nvim'},
	{'williamboman/mason-lspconfig.nvim'},
	{'neovim/nvim-lspconfig'},
	{'hrsh7th/cmp-nvim-lsp'},
	{'hrsh7th/nvim-cmp'},
	{'L3MON4D3/LuaSnip', run = "make install_jsregexp"},
	{'mfussenegger/nvim-lint'},
	{'saadparwaiz1/cmp_luasnip'}
})

