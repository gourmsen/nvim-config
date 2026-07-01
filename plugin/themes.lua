-- install
vim.pack.add({
    { src = "https://github.com/rose-pine/neovim" },
})

-- configure
require("rose-pine").setup({
    styles = {
        italic = false,
        transparency = true,
    },
})

-- apply
vim.cmd("colorscheme rose-pine")
