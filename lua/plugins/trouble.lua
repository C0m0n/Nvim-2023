return {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
	-- your configuration comes here
	-- or leave it empty to use the default settings
	-- refer to the configuration section below
    },
    config = function()
	vim.keymap.set('n', '<leader>tt', function ()
	    require('trouble').toggle()
	end, {desc = "Trouble"})
	vim.keymap.set('n', '<leader>tw', function ()
	    require('trouble').toggle('workspace_diagnostics')
	end, {desc = "Diagnostics"})
	vim.keymap.set('n', '<leader>tq', function ()
	    require('trouble').toggle('quickfix')
	end, {desc = 'Quickfix'})
	vim.keymap.set('n', '<leader>tn', function ()
		require('trouble').next({skip_groups = true, jump = false})
	end, {desc = 'Trouble next'})
	vim.keymap.set('n', '<leader>tp', function ()
		require('trouble').previous({skip_groups = true, jump = false})
	end, {desc = 'Trouble prev'} )
    end
}
