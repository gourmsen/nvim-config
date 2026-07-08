-- install
vim.pack.add({
    { src = "https://github.com/lewis6991/gitsigns.nvim" },
})

-- configure
require("gitsigns").setup()

-- keymaps
vim.keymap.set("n", "<leader>c", ":Gitsigns preview_hunk_inline<CR>", { desc = "Preview Hunk" })
vim.keymap.set({ "n", "v" }, "<leader>s", ":Gitsigns stage_hunk<CR>", { desc = "Stage Hunk" })
vim.keymap.set("n", "<leader>u", ":Gitsigns undo_stage_hunk<CR>", { desc = "Undo Hunk" })
vim.keymap.set("n", "<leader>j", ":Gitsigns next_hunk<CR>", { desc = "Next Hunk" })
vim.keymap.set("n", "<leader>k", ":Gitsigns prev_hunk<CR>", { desc = "Previous Hunk" })
vim.keymap.set("n", "<leader>z", ":Gitsigns reset_hunk<CR>", { desc = "Reset Hunk" })
