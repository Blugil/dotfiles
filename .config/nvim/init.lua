--  _       _ _     _             
-- (_)     (_) |   | |            
--  _ _ __  _| |_  | |_   _  __ _ 
-- | | '_ \| | __| | | | | |/ _` |
-- | | | | | | |_ _| | |_| | (_| |
-- |_|_| |_|_|\__(_)_|\__,_|\__,_|
                                

vim.cmd('colorscheme gruvbox')
vim.o.termguicolors=true

require('plugins')
require('plugin_config')

vim.o.encoding='UTF-8'

vim.o.syntax='on'

vim.o.shiftwidth=4

vim.o.tabstop=4

vim.o.softtabstop=4

vim.o.expandtab=true

vim.o.smartcase=true

vim.o.swapfile=false

vim.o.backup=false

vim.o.number=true

vim.o.relativenumber=true

vim.o.showmatch=true

vim.o.showcmd=true

vim.o.hidden=true
