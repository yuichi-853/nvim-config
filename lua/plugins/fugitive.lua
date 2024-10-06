return {
    'tpope/vim-fugitive',
    config = function()
        vim.keymap.set("n", "<leader>gs", ":Git<CR>", { desc = "Open Git status" })
        vim.keymap.set("n", "<leader>ga", ":Git add .<CR>", { desc = "Git add all changes" })
        vim.keymap.set("n", "<leader>gc", ":Git commit<CR>", { desc = "Git commit" })
        vim.keymap.set("n", "<leader>gp", ":Git push<CR>", { desc = "Git push" })
        vim.keymap.set("n", "<leader>gl", ":Git pull<CR>", { desc = "Git pull" })
        vim.keymap.set("n", "<leader>gb", ":Git branch<CR>", { desc = "Git branch" })
        vim.keymap.set("n", "<leader>gd", ":Gdiffsplit<CR>", { desc = "Git diff" })
    end
}
