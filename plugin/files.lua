-- install
vim.pack.add({
    { src = "https://github.com/ibhagwan/fzf-lua" },
    { src = "https://github.com/rmagatti/auto-session" },
    { src = "https://github.com/nvim-tree/nvim-tree.lua" },
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
require("nvim-tree").setup({
    view = {
        width = 50,
    },
})

-- keymaps
vim.keymap.set("n", "<leader>f", "<cmd>FzfLua files<CR>", { desc = "Files" })
vim.keymap.set("n", "<leader>b", "<cmd>FzfLua buffers<CR>", { desc = "Buffers" })
vim.keymap.set("n", "<leader>g", "<cmd>FzfLua live_grep<CR>", { desc = "Grep" })
vim.keymap.set("n", "<leader>r", "<cmd>FzfLua lsp_references<CR>", { desc = "References" })

vim.keymap.set("n", "<leader>w", "<cmd>AutoSession search<CR>", { desc = "Workspaces" })

vim.keymap.set("n", "<leader>t", "<cmd>NvimTreeToggle<CR>", { desc = "File Tree" })
