-- install
vim.pack.add({
    { src = "https://github.com/neovim/nvim-lspconfig" },
    { src = "https://github.com/mason-org/mason.nvim" },
    { src = "https://github.com/mason-org/mason-lspconfig.nvim" },
    { src = "https://github.com/saghen/blink.cmp", version = vim.version.range("1.*") }, -- v2 currently under development
    { src = "https://github.com/folke/trouble.nvim" },
})

-- configure
require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = {
        "lua_ls",
        "ts_ls",
        "angularls",
        "markdown_oxide",
    },
})
require("blink.cmp").setup({
    keymap = {
        ["<C-space>"] = { "show", "hide", "fallback" },

        ["<Up>"] = { "select_prev", "fallback" },
        ["<Down>"] = { "select_next", "fallback" },
        ["<C-k>"] = { "select_prev", "fallback" },
        ["<C-j>"] = { "select_next", "fallback" },

        ["<CR>"] = { "accept", "fallback" },
    },
})
require("trouble").setup()

-- lsp
vim.lsp.config("lua_ls", { settings = { Lua = { diagnostics = { globals = { "vim" } } } } })

-- keymaps
vim.keymap.set("n", "<leader>d", vim.lsp.buf.definition, { desc = "Definition" })
vim.keymap.set("n", "<leader>e", "<cmd>Trouble diagnostics toggle<CR>", { desc = "Trouble" })
