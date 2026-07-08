-- install
vim.pack.add({
    { src = "https://github.com/ibhagwan/fzf-lua" },
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

-- keymaps
vim.keymap.set("n", "<leader>f", "<cmd>FzfLua files<CR>", { desc = "Files" })
vim.keymap.set("n", "<leader>b", "<cmd>FzfLua buffers<CR>", { desc = "Buffers" })
vim.keymap.set("n", "<leader>g", "<cmd>FzfLua live_grep<CR>", { desc = "Grep" })
vim.keymap.set("n", "<leader>r", "<cmd>FzfLua lsp_references<CR>", { desc = "References" })
