vim.g.coc_global_extensions = {
  'coc-solargraph',
  'coc-highlight',
  'coc-json',
  'coc-lua',
  'coc-pyright',
  'coc-snippets',
  'coc-spell-checker',
  'coc-yank'
}

vim.keymap.set('n', '[g', '<Plug>(coc-diagnostic-prev)')
vim.keymap.set('n', ']g', '<Plug>(coc-diagnostic-next)')

vim.keymap.set('n', 'cl', ':<C-u>CocList<cr>')
vim.keymap.set('n', 'K', ':<C-u>call CocAction("doHover")<cr>')
vim.keymap.set('n', 'gd', '<Plug>(coc-definition)')
vim.keymap.set('n', 'gr', '<Plug>(coc-references)')
vim.keymap.set('n', 'bf', '<Plug>(coc-format)')
vim.keymap.set('n', 'rn', '<Plug>(coc-rename)')
vim.keymap.set('n', '<Leader>y', ':<C-u>CocList -A --normal yank<cr>')
vim.keymap.set('n', '<Leader>a', '<Plug>(coc-codeaction-selected)')
vim.keymap.set('v', '<Leader>a', '<Plug>(coc-codeaction-selected)')
vim.cmd[[
  "Diagnosticsの、左横のアイコンの色設定
  highlight CocErrorSign ctermfg=15 ctermbg=196
  highlight CocWarningSign ctermfg=0 ctermbg=172
  highlight HighlightedyankRegion term=bold ctermbg=255 guibg=#f44336

  autocmd CursorHold * silent call CocActionAsync('highlight')
]]

vim.g.coc_current_word_highlight_delay = 0
