-- install
vim.pack.add({
    { src = "https://github.com/nvim-tree/nvim-web-devicons" },
    { src = "https://github.com/folke/which-key.nvim" },
})

-- configure
require("nvim-web-devicons").setup()
require("which-key").setup({
    icons = {
        mappings = false,
    },
})
