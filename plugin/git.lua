-- install
vim.pack.add({
    { src = "https://github.com/tpope/vim-fugitive" },
    { src = "https://github.com/lewis6991/gitsigns.nvim" },
    { src = "https://github.com/kdheepak/lazygit.nvim" },
})

-- configure
require("gitsigns").setup()
vim.g.lazygit_floating_window_scaling_factor = 1

-- keymaps
vim.keymap.set("n", "<leader>v", function()
    vim.ui.input({ prompt = "Branch: ", default = "develop" }, function(input)
        if input and input ~= "" then
            vim.cmd("Gvdiffsplit " .. input)
        end
    end)
end, { desc = "Diff File" })

vim.keymap.set("n", "<leader>c", "<cmd>Gitsigns preview_hunk_inline<CR>", { desc = "Preview Hunk" })
vim.keymap.set({ "n", "v" }, "<leader>s", ":Gitsigns stage_hunk<CR>", { desc = "Stage Hunk" })
vim.keymap.set("n", "<leader>u", "<cmd>Gitsigns undo_stage_hunk<CR>", { desc = "Undo Hunk" })
vim.keymap.set("n", "<leader>j", "<cmd>Gitsigns next_hunk<CR>", { desc = "Next Hunk" })
vim.keymap.set("n", "<leader>k", "<cmd>Gitsigns prev_hunk<CR>", { desc = "Previous Hunk" })
vim.keymap.set("n", "<leader>z", "<cmd>Gitsigns reset_hunk<CR>", { desc = "Reset Hunk" })

vim.keymap.set("n", "<leader>l", "<cmd>LazyGit<CR>", { desc = "LazyGit" })
