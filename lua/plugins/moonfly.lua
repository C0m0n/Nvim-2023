return { 
    "ellisonleao/gruvbox.nvim",
    name = "gruvbox", 
    lazy = false,
    priority = 1000,
    config = function()
	vim.o.background = "dark" -- or "light" for light mode
	vim.cmd.colorscheme("gruvbox")
    end
}
