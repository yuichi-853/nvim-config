return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function () 
		local configs = require("nvim-treesitter.configs")

		configs.setup({
			ensure_installed = { "bash", "c", "cmake", "cpp", "css", "go", "gomod", "gosum", "gotmpl", "html", "javascript", "json", "lua", "php", "sql", "vim", "vimdoc" },
			sync_install = false,
			ignore_install = { "org" },
			highlight = { enable = true },
			indent = { enable = true },  
		})
	end
}
