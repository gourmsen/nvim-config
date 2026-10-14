-- install
vim.pack.add({
    { src = "https://github.com/navarasu/onedark.nvim" },
    { src = "https://github.com/EdenEast/nightfox.nvim" },
})

-- configure
require("onedark").setup({
    transparent = true,
    code_style = {
        comments = "none",
    },
})

-- apply
vim.cmd("colorscheme carbonfox")
