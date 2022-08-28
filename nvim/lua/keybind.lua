vim.keymap.set('i', 'jk', '<esc>')
vim.keymap.set('n', '<Leader>w', ':<C-u>w<CR>')
vim.keymap.set('n', '<Leader>q', ':<C-u>q<CR>')
vim.keymap.set('n', '<Leader>s', ':<C-u>source %<CR>')
vim.keymap.set('n', '<Leader>?', ':<C-u>WhichKey<CR>')
vim.keymap.set('n', '<Leader>P', ':<C-u>echo expand("%:p")<CR>')
vim.keymap.set('n', '<Leader>h', '^')
vim.keymap.set('n', '<Leader>l', '$')
vim.keymap.set('n', '<C-c>', ':<C-u>bd<CR>')
vim.keymap.set('n', '<C-q>', ':<C-u>bd!<CR>')
vim.keymap.set('n', '<Leader>f', ':<C-u>//gc<Home>%s/')
vim.keymap.set('n', '<ESC><ESC>', ':<C-u>nohlsearch<CR>')
vim.keymap.set('n', '<Leader>n', ':<C-u>Fern . -reveal=%<CR>')
vim.keymap.set('n', '<Leader>b', ':<C-u>Fern bookmark:///<CR>')
vim.keymap.set('n', '<Leader>=', ':<C-u>call WinCollapse()<CR>')
vim.keymap.set('n', '<Leader>O', ':<C-u>only<CR>')
vim.keymap.set('n', '<Leader>o', ':<C-u>call WinExpand()<CR>')
vim.keymap.set('n', '<C-h>', '<Plug>(wintabs_previous)')
vim.keymap.set('n', '<C-l>', '<Plug>(wintabs_next)')

vim.cmd [[
  function! WinExpand ()
      :res
      :vert res
  endfunction

  function! WinCollapse()
      exe "normal \<c-w>\="
  endfunction
]]

-- fern
vim.api.nvim_create_augroup('fern_setting', {})
vim.api.nvim_create_autocmd({ 'FileType' }, {
  group = 'fern_setting',
  pattern = { "fern" },
  callback = function()
    vim.cmd [[
      nmap <silent> <buffer> p     <Plug>(fern-action-preview:toggle)
      nmap <silent> <buffer> <C-p> <Plug>(fern-action-preview:auto:toggle)
      nmap <silent> <buffer> <C-d> <Plug>(fern-action-preview:scroll:down:half)
      nmap <silent> <buffer> <C-u> <Plug>(fern-action-preview:scroll:up:half)
    ]]
  end
})

-- fzf-lua
vim.keymap.set("n", ",f", ':FzfLua files<CR>')
vim.keymap.set("n", ",b", ':FzfLua buffers<CR>')
vim.keymap.set("n", ",h", ':FzfLua oldfiles<CR>')
vim.keymap.set("n", ",r", ':FzfLua live_grep<CR>')
vim.keymap.set("n", ",w", ':FzfLua grep_cword <CR>')
vim.keymap.set("n", ",F", ':FzfLua git_status<CR>')

vim.cmd [[


  nmap ]h <Plug>(GitGutterNextHunk)
  nmap [h <Plug>(GitGutterPrevHunk)
  nnoremap gif :<C-u>GitGutterFold<CR>
  nmap ghp <Plug>(GitGutterPreviewHunk)
]]
-- OperatorReplace
vim.keymap.set("n", "<Leader>r", '<Plug>(operator-replace)')

-- Jumpcursor
vim.keymap.set("n", "<Leader>j", '<Plug>(jumpcursor-jump)')

-- vim-quickhl
vim.keymap.set("n", "<Leader>m", '<Plug>(quickhl-manual-this)')
vim.keymap.set("n", "<Leader>M", '<Plug>(quickhl-manual-reset)')

-- 置き換え
vim.keymap.set("n", "gs", ':<C-u>%s///g<Left><Left><Left>')
vim.keymap.set("v", "gs", ':s///g<Left><Left><Left>')

-- 入力モードでのカーソル移動
vim.keymap.set("i", "<C-j>", '<Down>')
vim.keymap.set("i", "<C-k>", '<Up>')
vim.keymap.set("i", "<C-h>", '<Left>')
vim.keymap.set("i", "<C-l>", '<Right>')

-- 折り返し時に表示行単位での移動できるようにする
vim.keymap.set("n", "j", 'gj')
vim.keymap.set("n", "k", 'gk')

vim.keymap.set("n", "<Leader>g", ':<C-u>LazyGit<CR>')
