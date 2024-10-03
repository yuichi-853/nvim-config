return {
	'nvim-telescope/telescope.nvim',
	tag = '0.1.8',
	dependencies = { 'nvim-lua/plenary.nvim' },

	config = function ()
		local builtin = require('telescope.builtin')
		vim.keymap.set('n', '<leader>pf', builtin.find_files, { desc = 'Telescope find project files' })
		vim.keymap.set('n', '<C-p>', builtin.git_files, { desc = 'Telescope find files in git' })
		-- Keymap for Grep with input prompt
		vim.keymap.set('n', '<leader>ps', function()
			builtin.grep_string({ search = vim.fn.input("Grep > ") })
		end, { desc = 'Telescope grep string' })
	end
}
