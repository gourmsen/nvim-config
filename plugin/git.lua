-- install
vim.pack.add({
    { src = "https://github.com/lewis6991/gitsigns.nvim" },
})

-- configure
require("gitsigns").setup()

-- keymaps
vim.keymap.set("n", "<leader>c", "<cmd>Gitsigns preview_hunk_inline<CR>", { desc = "Preview Hunk" })
vim.keymap.set({ "n", "v" }, "<leader>s", "<cmd>Gitsigns stage_hunk<CR>", { desc = "Stage Hunk" })
vim.keymap.set("n", "<leader>u", "<cmd>Gitsigns undo_stage_hunk<CR>", { desc = "Undo Hunk" })
vim.keymap.set("n", "<leader>j", "<cmd>Gitsigns next_hunk<CR>", { desc = "Next Hunk" })
vim.keymap.set("n", "<leader>k", "<cmd>Gitsigns prev_hunk<CR>", { desc = "Previous Hunk" })
vim.keymap.set("n", "<leader>z", "<cmd>Gitsigns reset_hunk<CR>", { desc = "Reset Hunk" })
