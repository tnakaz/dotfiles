--  保存時のみ実行
vim.g.ale_lint_on_text_changed = 0
vim.g.ale_fix_on_save = 1

vim.g.ale_sign_error = ''
vim.g.ale_sign_warning = ''
vim.g.ale_echo_msg_format = '[%linter%] %code: %%s'

vim.g.ale_fixers = {
  ['*'] = { 'remove_trailing_lines', 'trim_whitespace' },
  ruby = { 'rubocop' },
  slim = { 'slim-lint' },
  lua = { 'luafmt' },
  json = { 'fixjson' }
}

vim.keymap.set('n', '<C-k>', '<Plug>(ale_previous_wrap)')
vim.keymap.set('n', '<C-j>', '<Plug>(ale_next_wrap)')

vim.cmd [[
  highlight link ALEErrorSign Tag
  highlight link ALEWarningSign StorageClass
]]
