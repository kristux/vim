local opt = vim.opt

opt.termguicolors = true
opt.number        = true
opt.hidden        = true
opt.history       = 100
opt.wrap          = false
opt.tabstop       = 2
opt.shiftwidth    = 2
opt.expandtab     = true
opt.smartindent   = true
opt.autoindent    = true
opt.hlsearch      = true
opt.showmatch     = true
opt.guifont       = 'Consolas'
opt.signcolumn    = 'yes'  -- keeps gutter stable when diagnostics appear

vim.g.mapleader = ' '

vim.cmd.colorscheme('redline')
