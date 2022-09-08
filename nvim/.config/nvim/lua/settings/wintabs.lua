vim.g.wintabs_autoclose_vim = 1

vim.keymap.set('n', '<C-h>', '<Plug>(wintabs_previous)')
vim.keymap.set('n', '<C-l>', '<Plug>(wintabs_next)')
vim.keymap.set('n', '<C-c>', '<Plug>(wintabs_close)')
vim.keymap.set('n', '<C-w>o', '<Plug>(wintabs_only)')
vim.keymap.set('n', '<C-w>u', '<Plug>(wintabs_undo)')
vim.keymap.set('n', '<Leader><', ':WintabsMove -1<cr> ')
vim.keymap.set('n', '<Leader>>', ':WintabsMove 1<cr> ')
vim.keymap.set('n', '<C-w><c-l>', '<Plug>(wintabs_move_to_window_right)')
vim.keymap.set('n', '<C-w><c-h>', '<Plug>(wintabs_move_to_window_left)')
vim.keymap.set('n', '<C-w><c-k>', '<Plug>(wintabs_move_to_window_above)')
vim.keymap.set('n', '<C-w><c-j>', '<Plug>(wintabs_move_to_window_below)')
