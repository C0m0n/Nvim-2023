return {
    --- Uncomment these if you want to manage LSP servers from neovim
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},

    {
	'VonHeikemen/lsp-zero.nvim', branch = 'v3.x',
	config = function()
	    local lsp_zero = require('lsp-zero')
	    lsp_zero.extend_lspconfig()

	    lsp_zero.on_attach(function(client, bufnr)
		local opts = {buffer = bufnr}

		vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
		vim.keymap.set("n", "K", function () vim.lsp.buf.hover() end, opts)
		vim.keymap.set("n", "<space>vws", function () vim.lsp.buf.workspace_symbol() end, opts)
		vim.keymap.set("n", "<space>vd", function () vim.diagnostic.open_float() end, opts)
		vim.keymap.set("n", "[m", function () vim.diagnostic.goto_prev() end, opts)
		vim.keymap.set("n", "[n", function () vim.diagnostic.goto_next() end, opts)
		vim.keymap.set("n", "<space>vca", function () vim.lsp.buf.code_action() end, opts)
		vim.keymap.set("n", "<space>vrr", function () vim.lsp.buf.references() end, opts)
		vim.keymap.set("n", "<space>vrn", function () vim.lsp.buf.rename() end, opts)


	    end)
	    lsp_zero.setup()
	    require('mason').setup({})
	    lsp_zero.extend_lspconfig()
	    require('mason-lspconfig').setup({
		ensure_installed = {"pyright", "tsserver", "eslint", "rust_analyzer", "clangd"},
		handlers = {
		    lsp_zero.default_setup,
		}
	    })
	    require('lspconfig').lua_ls.setup({})
	    require('lspconfig').pyright.setup({})
	    require('lspconfig').eslint.setup({})
	    require('lspconfig').rust_analyzer.setup({})
	    require('lspconfig').clangd.setup({})
	    require('lspconfig').tsserver.setup({})
	end
    },
    {'neovim/nvim-lspconfig'},
    {'hrsh7th/cmp-nvim-lsp'},
    {
	'hrsh7th/nvim-cmp',
	config = function ()
	    local cmp = require('cmp')
	    local cmp_action = require('lsp-zero').cmp_action()

	    cmp.setup({
		mapping = cmp.mapping.preset.insert({
		    -- `Enter` key to confirm completion
		    ['<CR>'] = cmp.mapping.confirm({select = false}),

		    -- Ctrl+Space to trigger completion menu
		    ['<C-Space>'] = cmp.mapping.complete(),

		    -- Navigate between snippet placeholder
		    ['<C-f>'] = cmp_action.luasnip_jump_forward(),
		    ['<C-b>'] = cmp_action.luasnip_jump_backward(),

		    -- Scroll up and down in the completion documentation
		    ['<C-u>'] = cmp.mapping.scroll_docs(-4),
		    ['<C-d>'] = cmp.mapping.scroll_docs(4),
		})
	    })
	end
    },
    {'L3MON4D3/LuaSnip'},
}
