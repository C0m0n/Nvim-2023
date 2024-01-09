return{
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
	-- your configuration comes here
	-- or leave it empty to use the default settings
	-- refer to the configuration section below
    },
    config = function()
	vim.o.timeout = true
	vim.o.timeoutlen = 300
    	local wk = require("which-key")
	wk.register({
	    f = {
		name = "file",
	    },
	    v = {
		name = "lsp",
	    },
	    t = {name = 'trouble'}
	}, {prefix = "<space>"})
    end
}

