require('telescope').setup({
    defaults = {
	file_ignore_patterns = {
	    "node_modules"
	}
    }
})
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
-- Taken from https://www.youtube.com/watch?v=w7i4amO_zaE
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
-- fm : find mentions
vim.keymap.set('n', '<leader>fm', function() 
	builtin.grep_string({search = vim.fn.input("Grep > ")})
end)
