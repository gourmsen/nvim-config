-- install
vim.pack.add({
    { src = "https://github.com/navarasu/onedark.nvim" },
})

-- configure
require("onedark").setup({
    code_style = {
        comments = "none",
    },
})

-- apply
require("onedark").load()
