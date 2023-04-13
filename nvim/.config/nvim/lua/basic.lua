-- see https://neovim.io/doc/user/options.html
--
vim.g.mapleader = ' '

vim.o.helplang = 'ja,en'
vim.o.swapfile = false
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.mouse = 'a'
vim.opt.clipboard = "unnamedplus"
vim.o.tabstop = 2
vim.wo.number = true
vim.wo.cursorline = true
vim.o.virtualedit = 'onemore'
vim.o.smartindent = true
vim.o.visualbell = true
-- vim.o.wildmode = 'list:longest'
vim.o.hidden = true
vim.wo.signcolumn = 'yes'
vim.o.shiftwidth = 2
vim.o.expandtab = true
vim.o.updatetime = 300
vim.opt.termguicolors = true
vim.opt.list = true
vim.opt.listchars = "tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%"
vim.g.db_ui_use_nerd_fonts = 1
vim.cmd("autocmd InsertLeave * :call system('im-select com.apple.keylayout.ABC')")
vim.cmd("autocmd CmdlineLeave * :call system('im-select com.apple.keylayout.ABC')")
vim.cmd("autocmd QuickFixCmdPost *grep* cwindow")

vim.g.targets_nl = 'nN'
-- target-lineの動作置き換え。-が使われていると-が選択されるのでxで置き換え
vim.cmd [[
  autocmd User targets#mappings#user call targets#mappings#extend({
    \ '-': {'separator': [{'d': '-'}]},
    \ 'x': {'line': [{'c': 1}]},
    \ })
]]


-- Yaml:
vim.cmd[[
  autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
  let g:indentLine_char = '⦙'
  autocmd FileType json let g:indentLine_enabled=0
]]
