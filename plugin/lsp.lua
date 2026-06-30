-- install plugins
vim.pack.add {
    { src = 'https://github.com/neovim/nvim-lspconfig' },
    { src = 'https://github.com/mason-org/mason.nvim' },
    { src = 'https://github.com/mason-org/mason-lspconfig.nvim' }
}

-- configure plugins
require('mason').setup()
require('mason-lspconfig').setup({
    ensure_installed = {
	"lua_ls",
	"ts_ls",
	"angularls",
	"markdown_oxide"
    }
})

-- configure language server
vim.lsp.config("lua_ls", { settings = { Lua = { diagnostics = { globals = { "vim" }}}}})
