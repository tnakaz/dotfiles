vim.g.lazygit_floating_window_scaling_factor = 0.95

-- Use fontawesome icons as signs
vim.g.gitgutter_sign_added = '+'
vim.g.gitgutter_sign_modified = '>'
vim.g.gitgutter_sign_removed = '-'
vim.g.gitgutter_sign_removed_first_line = '^'
vim.g.gitgutter_sign_modified_removed = '<'

-- Default key mapping off
vim.g.gitgutter_map_keys = 0

vim.g.gitgutter_preview_win_floating = 0
vim.g.gitgutter_preview_win_location = 'bo'
vim.g.gitgutter_highlight_lines = 1

vim.keymap.set('n', ']h', '<Plug>(GitGutterNextHunk)')
vim.keymap.set('n', '[h', '<Plug>(GitGutterPrevHunk)')
vim.keymap.set('n', 'gif', '<Plug>(GitGutterFold)')
vim.keymap.set('n', 'gh', '<Plug>(GitGutterPreviewHunk)')
