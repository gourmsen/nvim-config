-- install
vim.pack.add({
    { src = "https://github.com/neovim/nvim-lspconfig" },
    { src = "https://github.com/mason-org/mason.nvim" },
    { src = "https://github.com/mason-org/mason-lspconfig.nvim" },
    { src = "https://github.com/saghen/blink.cmp", version = vim.version.range("1.*") }, -- v2 currently under development
    { src = "https://github.com/folke/trouble.nvim" },
    { src = "https://github.com/rmagatti/goto-preview" },
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
require("goto-preview").setup({
    width = 120,
    height = 30,
})

-- lsp
vim.lsp.config("lua_ls", { settings = { Lua = { diagnostics = { globals = { "vim" } } } } })

-- keymaps
vim.keymap.set("n", "<leader>d", vim.lsp.buf.definition, { desc = "Definition" })
vim.keymap.set("n", "<leader>e", "<cmd>Trouble diagnostics toggle<CR>", { desc = "Trouble" })
vim.keymap.set("n", "<leader>q", function()
    local goto_preview = require("goto-preview")
    local has_open = false

    for _, win in ipairs(require("goto-preview.lib").windows) do
        if vim.api.nvim_win_is_valid(win) then
            has_open = true
            break
        end
    end

    if has_open then
        goto_preview.close_all_win()
    else
        goto_preview.goto_preview_definition()
    end
end, { desc = "Goto Preview (toggle)" })
