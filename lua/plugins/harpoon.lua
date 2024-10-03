return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim" },

	config = function()
		-- Require Harpoon modules
		local mark = require('harpoon.mark')
		local ui = require('harpoon.ui')

		-- Key mappings
		-- Add file to Harpoon list
		vim.keymap.set("n", "<leader>a", function() mark.add_file() end, { desc = "Add file to Harpoon" })

		-- Toggle the Harpoon quick menu
		vim.keymap.set("n", "<C-e>", function() ui.toggle_quick_menu() end, { desc = "Toggle Harpoon menu" })

		-- Navigate to specific files in the Harpoon list
		vim.keymap.set("n", "<C-h>", function() ui.nav_file(1) end, { desc = "Navigate to file 1" })
		vim.keymap.set("n", "<C-t>", function() ui.nav_file(2) end, { desc = "Navigate to file 2" })
		vim.keymap.set("n", "<C-n>", function() ui.nav_file(3) end, { desc = "Navigate to file 3" })
		vim.keymap.set("n", "<C-s>", function() ui.nav_file(4) end, { desc = "Navigate to file 4" })
	end
}

