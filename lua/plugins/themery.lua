return {
    'zaldih/themery.nvim',
    config = function ()
	require("themery").setup({
	    themes = {"gruvbox", "ayu", "moonfly"}, -- Your list of installed colorschemes
	    themeConfigFile = "~/.config/nvim/lua/theme.lua", -- Described below
	    livePreview = true, -- Apply theme while browsing. Default to true.
	})
    end
}
