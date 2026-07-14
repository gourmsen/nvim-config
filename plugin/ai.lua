-- install
vim.pack.add({
    { src = "https://github.com/github/copilot.vim" },
    { src = "https://github.com/folke/sidekick.nvim" },
})

-- configure
require("sidekick").setup()

-- keymaps
vim.keymap.set("n", "<Tab>", "<cmd>Sidekick nes apply<CR>", { desc = "Apply NES" })
vim.keymap.set("n", "<S-Tab>", "<cmd>Sidekick nes clear<CR>", { desc = "Clear NES" })

vim.keymap.set("n", "<leader>ai", function()
    require("sidekick.cli").toggle({
        name = "copilot",
        focus = true,
    })
end, { desc = "Copilot (normal)" })

vim.keymap.set({ "n", "v" }, "<leader>at", function()
    require("sidekick.cli").send({
        name = "copilot",
        focus = true,
        msg = "{this}\n\n",
    })
end, { desc = "Copilot (this)" })

vim.keymap.set("n", "<leader>ad", function()
    require("sidekick.cli").send({
        name = "copilot",
        focus = true,
        msg = "{diagnostics}\n\n",
    })
end, { desc = "Copilot (diagnostics)" })
