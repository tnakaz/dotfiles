" リーダーキー変更
let mapleader = "\<Space>"

inoremap <silent> jk <ESC>
inoremap <silent> jk <ESC>

" 置き換え
nnoremap gs  :<C-u>%s///g<Left><Left><Left>
vnoremap gs  :s///g<Left><Left><Left>

" 入力モードでのカーソル移動
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-h> <Left>
inoremap <C-l> <Right>

" 折り返し時に表示行単位での移動できるようにする
nnoremap j gj
nnoremap k gk

nnoremap <C-j> 5j
nnoremap <C-k> 5k

" リーダーキー
nnoremap <Leader>w  :<C-u>w<CR>
nnoremap <Leader>q  :<C-u>q<CR>
nnoremap <Leader>W  :<C-u>wq<CR>
nnoremap <Leader>Q  :<C-u>q!<CR>
nnoremap <Leader>o  :<C-u>only<CR>
nnoremap <Leader>s  :<C-u>source %<CR>
nnoremap <Leader>?  :<C-u>WhichKey<CR>
nnoremap <Leader>h  ^
nnoremap <Leader>l  $
nnoremap <Leader>f  :<C-u>//gc<Home>%s/
" チートファイルを開く
nnoremap <Leader>vc :!open "https://oasis-parent-c73.notion.site/2e89658f153b49d5afcfe28d006a58cf?v=eb05c56fbaae4d18a8f33750d7054339"<CR>

nmap <silent> g :<C-u>Gtabedit :<cr>
nmap <silent> gd :<C-u>Gdiff<cr>
nnoremap <Leader>p :<C-u>GitGutterPreviewHunk<CR>

" functions
function PlugStr (url)
  let str = substitute(a:url,'https://github.com/','','g')
  return "Plug '".str."'"
endfunction
