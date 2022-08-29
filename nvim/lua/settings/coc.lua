vim.g.coc_global_extensions = { 'coc-solargraph'}
vim.cmd[[
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

"Diagnosticsの、左横のアイコンの色設定
highlight CocErrorSign ctermfg=15 ctermbg=196
highlight CocWarningSign ctermfg=0 ctermbg=172
highlight HighlightedyankRegion term=bold ctermbg=255 guibg=#f44336

nmap <silent> cl :<C-u>CocList<cr>
nmap <silent> K :<C-u>call CocAction('doHover')<cr>
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gr <Plug>(coc-references)
nmap <leader>rn <Plug>(coc-rename)
nmap <silent> == <Plug>(coc-format)

nnoremap <silent> <space>y  :<C-u>CocList -A --normal yank<cr>

let g:coc_snippet_next = '<tab>'

vmap <leader>a <Plug>(coc-codeaction-selected)
nmap <leader>a <Plug>(coc-codeaction-selected)


]]
