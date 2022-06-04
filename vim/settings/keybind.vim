inoremap <silent> jk <ESC>
inoremap <silent> jk <ESC>

nnoremap <Space>w  :<C-u>w<CR>
nnoremap <Space>q  :<C-u>q<CR>
nnoremap <Space>Q  :<C-u>q!<CR>
nnoremap <Space>h  ^
nnoremap <Space>l  $

" 複数の空行を一気に挿入
nnoremap <Space>o  :<C-u>for i in range(v:count1) \| call append(line('.'), '') \| endfor<CR>
nnoremap <Space>O  :<C-u>for i in range(v:count1) \| call append(line('.')-1, '') \| endfor<CR>

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

" リーダーキー
nnoremap <Leader>vc :e ~/.vim/settings/cheat.md<CR>
nnoremap <Leader>e  :<C-u>/ oldfiles<Home>browse filter /
