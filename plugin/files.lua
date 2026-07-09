-- install
vim.pack.add({
    { src = "https://github.com/ibhagwan/fzf-lua" },
    { src = "https://github.com/rmagatti/auto-session" },
})

-- configure
require("fzf-lua").setup({
    keymap = {
        fzf = {
            ["ctrl-j"] = "down",
            ["ctrl-k"] = "up",
        },
    },
})
require("auto-session").setup()

-- keymaps
vim.keymap.set("n", "<leader>f", "<cmd>FzfLua files<CR>", { desc = "Files" })
vim.keymap.set("n", "<leader>b", "<cmd>FzfLua buffers<CR>", { desc = "Buffers" })
vim.keymap.set("n", "<leader>g", "<cmd>FzfLua live_grep<CR>", { desc = "Grep" })
vim.keymap.set("n", "<leader>r", "<cmd>FzfLua lsp_references<CR>", { desc = "References" })
vim.keymap.set("n", "<leader>e", "<cmd>FzfLua diagnostics_workspace<CR>", { desc = "References" })

vim.keymap.set("n", "<leader>w", "<cmd>AutoSession search<CR>", { desc = "Workspaces" })
