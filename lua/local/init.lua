-- General configuration
vim.opt.relativenumber = true 
vim.opt.number = true
vim.opt.softtabstop = 4 
vim.opt.shiftwidth = 4
vim.opt.syntax = on
vim.opt.smartindent = true
vim.opt.autoindent = true

require("local.remap")
require("local.lazy")
require("local.tokyo")
require("local.bg")

