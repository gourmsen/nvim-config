-- install
vim.pack.add({
    { src = "https://github.com/nvim-tree/nvim-web-devicons" },
    { src = "https://github.com/nvim-lualine/lualine.nvim" },
    { src = "https://github.com/folke/which-key.nvim" },
    { src = "https://github.com/windwp/nvim-autopairs" },
})

-- configure
require("nvim-web-devicons").setup()
require("lualine").setup({
    sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch", "diff", "diagnostics" },
        lualine_c = { "filename" },
        lualine_x = {
            {
                "lsp_status",
                ignore_lsp = { "GitHub Copilot" },
            },
            "encoding",
            "fileformat",
            "filetype",
        },
        lualine_y = { "progress" },
        lualine_z = { "location" },
    },
})
require("which-key").setup({
    icons = {
        mappings = false,
    },
})
require("nvim-autopairs").setup()
