local set = vim.opt

-- Line numbers
set.relativenumber = true
set.number = true
-- Tabs
set.numberwidth = 1
set.tabstop = 4
set.shiftwidth = 4
set.expandtab = true
set.smartindent = true
set.autoindent = true
-- Folds
set.foldmethod = "indent"
set.foldlevel = 99
set.foldcolumn = "4" -- Has to be a string for some reason

vim.cmd.colorscheme("gruvbox")
