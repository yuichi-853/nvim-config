vim.g.have_nerd_font = true

-- Set tab width to 4 spaces
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Enable smart indentation
vim.opt.smartindent = true

-- Enable break indent
vim.opt.breakindent = true

-- Line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Disable swap and backup files, while enabling persistent undo history.
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- Sync clipboard between OS nad Neovim
vim.schedule(function()
	vim.opt.clipboard = "unnamedplus"
end)

-- Disable persistent search highlighting and enable incremental search.
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Enable 24-bit RGB color in the terminal (true color support)
vim.opt.termguicolors = true

-- Keep signcolumn on by default
vim.opt.signcolumn = "yes"

-- Decrease update time
vim.opt.updatetime = 150

-- Display a vertical line at the 80th column to assist with maintaining a consistent code width
vim.opt.colorcolumn = "80"

-- Decrease mapped sequence wait time
-- Displays which-key popup sooner
vim.opt.timeoutlen = 300

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

-- Preview substitutions live, as you type!
vim.opt.inccommand = "split"

-- Show which line your cursor is on
vim.opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10
