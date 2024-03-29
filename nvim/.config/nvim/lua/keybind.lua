vim.keymap.set('n', '<Leader>z', ':<C-u>ShowTimeline<CR>')
vim.keymap.set('i', 'jk', '<esc>')
vim.keymap.set('n', '<Leader>w', ':<C-u>w<CR>')
vim.keymap.set('n', '<Leader>q', ':<C-u>q<CR>')
vim.keymap.set('n', '<Leader>%', ':<C-u>source %<CR>')
vim.keymap.set('n', '<Leader>?', ':<C-u>WhichKey<CR>')
vim.keymap.set('n', '<Leader>P', ':<C-u>PathToClipboard<CR>')
vim.keymap.set('n', '<Leader>h', '^')
vim.keymap.set('n', '<Leader>l', '$')
vim.keymap.set('n', '<Leader>f', ':<C-u>//gc<Home>%s/')
vim.keymap.set('n', '<ESC><ESC>', ':<C-u>nohlsearch<CR>')
vim.keymap.set('n', '<Leader>n', ':<C-u>Fern . -reveal=%<CR>')
vim.keymap.set('n', '<Leader>b', ':<C-u>Fern bookmark:///<CR>')
vim.keymap.set('n', '<Leader>=', ':<C-u>WinEqualize<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<Leader>o', ':<C-u>WinMaximize<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<Leader>O', ':<C-u>WinOnly<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<Leader>a', ':<C-u>ALEFix<CR>')
vim.keymap.set('n', '<C-q>', ':bd!<cr>')
vim.keymap.set('n', '<Leader>S', '<Plug>SearchNormal')
vim.keymap.set('v', '<Leader>S', '<Plug>SearchVisual')
vim.keymap.set('t', '<C-n>', '<C-\\><C-n>')
vim.keymap.set('t', '<C-w><C-w>', '<C-\\><C-n><C-w>w')

vim.keymap.set('n', '[q', ':cprevious<CR>')
vim.keymap.set('n', 'q]', ':cnext<CR>')
vim.keymap.set('n', '[Q', ':cfirst<CR>')
vim.keymap.set('n', 'Q]', ':clast<CR>')

-- Nop for lightspeed
vim.keymap.set('n', 's', '<Nop>')
vim.keymap.set('n', 'S', '<Nop>')
vim.keymap.set('o', 'x', '<Nop>')


vim.keymap.set('n', '<Leader>j', '<Plug>Lightspeed_omni_s')
vim.keymap.set('n', '<Leader>J', '<Plug>Lightspeed_omni_gs')

-- Copilot
vim.keymap.set('i', '<C-x>', '<Plug>(copilot-dismiss)')
vim.keymap.set('i', '<C-\\>', '<Plug>(copilot-next)')
vim.keymap.set('i', '<C-]>', '<Plug>(copilot-previous)')
vim.keymap.set('i', '<C-s>', '<Plug>(copilot-suggest)')
vim.keymap.set('n', '<Leader>k', ':<C-u>Copilot panel<CR>')
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

-- OperatorReplace
vim.keymap.set("n", "<Leader>r", '<Plug>(operator-replace)')

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

-- snippets
vim.cmd [[
  imap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
  smap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
  imap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'
  smap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'

  let g:vsnip_filetypes = {}
  let g:vsnip_filetypes.ruby = ['rails']
]]
