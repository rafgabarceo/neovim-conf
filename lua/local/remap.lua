vim.g.mapleader = "\\"
vim.keymap.set("n", "<leader>ex", vim.cmd.Ex)
vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
