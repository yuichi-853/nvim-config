vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

-- neo-tree
vim.keymap.set("n", "<C-n>", ":Neotree<CR>", { desc = 'Toggle Neo-tree file explorer' })

-- Set tab width to 4 spaces
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Enable smart indentation
vim.opt.smartindent = true
