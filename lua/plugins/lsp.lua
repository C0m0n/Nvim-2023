return {
    --- Uncomment these if you want to manage LSP servers from neovim
    {
	'williamboman/mason.nvim',
	lazy = false,
	config = function()
	    require("mason").setup()
	end,
    },
    {
	'williamboman/mason-lspconfig.nvim',
	lazy = false,
	opts = {
	    autoinstall = true,
	    ensure_installed = {"bashls", "clangd", "tsserver",  "lua_ls", "pyright", "rust_analyzer", "svelte"}

	}
    },

    {
	'neovim/nvim-lspconfig',
	config = function()
	    local capabilities = require('cmp_nvim_lsp').default_capabilities()

	    local lspconfig = require("lspconfig")

	    lspconfig.bashls.setup({capabilities = capabilities})
	    lspconfig.clangd.setup({capabilities = capabilities})
	    lspconfig.tsserver.setup({capabilities = capabilities})
	    lspconfig.lua_ls.setup({capabilities = capabilities})
	    lspconfig.pyright.setup({capabilities = capabilities})
	    lspconfig.rust_analyzer.setup({capabilities = capabilities})
	    lspconfig.svelte.setup({capabilities = capabilities})

	    vim.keymap.set("n", "K", vim.lsp.buf.hover, {desc = 'Hover'})
	    vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {desc = 'Jump Definition'})
	    vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {desc = 'Jump References'})
	    vim.keymap.set("n", "<leader>ca", function () vim.lsp.buf.code_action() end, {desc = 'Code Action'})
	end,
    },
}
