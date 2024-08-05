local opt = vim.opt
local global = vim.g

--
-- [[ UI ]]
--
global.have_nerd_font = true
opt.inccommand = 'split'
opt.number = true
opt.relativenumber = true
opt.signcolumn = 'yes:2'
opt.scrolloff = 10
opt.cursorline = true
opt.cursorlineopt = 'number'
opt.termguicolors = true
opt.background = 'dark'
opt.mouse = 'a'
opt.list = true
opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
opt.updatetime = 250
opt.timeoutlen = 300

--
-- [[ EDIT ]]
--
opt.foldmethod = 'indent'
opt.fileformats = 'unix'
opt.undofile = true
opt.showmode = false
opt.clipboard = 'unnamedplus'
opt.expandtab = true
opt.breakindent = true
opt.autoindent = true
opt.smartindent = true
opt.smarttab = true
opt.splitright = true
opt.splitbelow = true
opt.virtualedit = 'block'

--
-- [[ SEARCH ]]
--
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = true
opt.incsearch = true
