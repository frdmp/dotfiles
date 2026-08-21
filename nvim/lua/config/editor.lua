-- disable netrw 
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set column limit
vim.opt.colorcolumn = "88"

-- set clipboard
vim.opt.clipboard="unnamed,unnamedplus"

-- set numbers
vim.opt.number = true
vim.opt.signcolumn = "yes"

-- disable wrap
vim.opt.wrap = false

-- use space as tab
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- colorscheme
vim.opt.termguicolors = true
vim.opt.background = "light"
vim.cmd.colorscheme("catppuccin-latte")

-- cursor
vim.opt.guicursor = "i:block"

-- diagnostics
vim.diagnostic.config({virtual_text = true})
