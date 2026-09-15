-- install
vim.pack.add({
    { src = "https://github.com/github/copilot.vim" },
    { src = "https://github.com/folke/sidekick.nvim" },
})

-- variables
local cli_name = vim.env.SIDEKICK_CLI or "opencode"

-- configure
require("sidekick").setup()

-- keymaps
vim.keymap.set("n", "<Tab>", "<cmd>Sidekick nes apply<CR>", { desc = "Apply NES" })
vim.keymap.set("n", "<S-Tab>", "<cmd>Sidekick nes clear<CR>", { desc = "Clear NES" })

vim.keymap.set("n", "<leader>ai", function()
    require("sidekick.cli").toggle({
        name = cli_name,
        focus = true,
    })
end, { desc = "AI Chat (normal)" })

vim.keymap.set({ "n", "v" }, "<leader>at", function()
    require("sidekick.cli").send({
        name = cli_name,
        focus = true,
        msg = "{this}\n\n",
    })
end, { desc = "AI Chat (this)" })

vim.keymap.set("n", "<leader>ad", function()
    require("sidekick.cli").send({
        name = cli_name,
        focus = true,
        msg = "{diagnostics}\n\n",
    })
end, { desc = "AI Chat (diagnostics)" })
