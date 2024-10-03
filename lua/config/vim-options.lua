-- Make sure to setup `mapleader` and `maplocalleader` before loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- neo-tree
vim.keymap.set("n", "<C-n>", ":Neotree<CR>", { desc = 'Toggle Neo-tree file explorer' })
