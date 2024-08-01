vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

opt.relativenumber = true
opt.number = true

-- indentation
opt.tabstop = 2       -- spaces for tabs
opt.shiftwidth = 2	  -- spaces for indent width
opt.expandtab = true  -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one

opt.wrap = false

-- search options
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true  -- mixed case in when searching

opt.cursorline = true

-- turn on termguicolors
opt.termguicolors = true
opt.background = "dark" -- colorschemes that can be light or dark will be made dark
opt.signcolumn = "yes" -- show sign column

-- backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent

-- clipboard
opt.clipboard:append("unnamedplus") -- user system clipboard as default register

-- split windows
opt.splitright = true  -- split vertical window to the right
opt.splitbelow = true  -- split horizontal window to the bottom

