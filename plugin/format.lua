-- install
vim.pack.add({
    { src = "https://github.com/stevearc/conform.nvim" },
})

-- configure
require("conform").setup({
    formatters_by_ft = {
        lua = { "stylua" },
        javascript = { "prettier" },
        typescript = { "prettier" },
        html = { "prettier" },
        htmlangular = { "prettier" },
        css = { "prettier" },
        scss = { "prettier" },
        json = { "prettier" },
        jsonc = { "prettier" },
        rust = { "rustfmt" },
    },
    format_on_save = false,
})

-- keymaps
vim.keymap.set("n", "<leader>p", function()
    require("conform").format({
        async = true,
        lsp_fallback = true,
    })
end, { desc = "Format" })
