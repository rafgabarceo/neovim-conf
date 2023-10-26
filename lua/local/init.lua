-- General configuration
vim.wo.relativenumber = true
vim.wo.number = true
vim.bo.softtabstop = 4
vim.o.shiftwidth = 4

require("local.remap")
require("local.lazy")
require("local.tokyo")
require("local.bg")

