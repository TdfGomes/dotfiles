local opt = vim.opt 

vim.g.mapleader = ' '

-- Give me some fenced codeblock goodness
vim.g.markdown_fenced_languages = { "html", "javascript", "typescript", "css", "scss", "lua", "vim" }

vim.o.updatetime = 250

opt.cursorline = true
opt.backspace = { "indent", "eol", "start" }
opt.clipboard = "unnamedplus"
opt.completeopt = "menu,menuone,noselect"
opt.encoding = "utf-8" -- Set default encoding to UTF-8
-- tabs
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.expandtab = true
-- numbers
opt.number = true
opt.relativenumber = true

opt.splitbelow = true -- Put new windows below current
opt.splitright = true -- Put new windows right of current

