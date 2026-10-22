-- disable netrw 
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set column limit
vim.opt.colorcolumn = "88"

-- set clipboard
vim.opt.clipboard = "unnamedplus"

-- set numbers
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "yes"

-- disable wrap
vim.opt.wrap = false

-- use space as tab
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.shiftround = true

-- colorscheme
vim.opt.termguicolors = true
vim.opt.background = "light"

-- cursor: force block in every mode
vim.opt.guicursor = "a:block"

-- diagnostics: configured in lua/config/autocmds.lua

-- searching
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.inccommand = "nosplit"

-- splits
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.splitkeep = "screen"
vim.opt.winminwidth = 5

-- cursor context
vim.opt.cursorline = true
vim.opt.scrolloff = 4
vim.opt.sidescrolloff = 8

-- persistence & behavior
vim.opt.undofile = true
vim.opt.updatetime = 250
vim.opt.mouse = "a"

-- whitespace & mode
vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }
vim.opt.showmode = false
vim.opt.pumheight = 10
