-- install themes
vim.pack.add({
    { src = "https://github.com/rose-pine/neovim" },
})

-- configure themes
require("rose-pine").setup({
    styles = {
	italic = false,
	transparency = true
    }
})

-- set theme
vim.cmd("colorscheme rose-pine")
