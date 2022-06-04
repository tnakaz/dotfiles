call plug#begin('~/.vim/plugged')
  Plug 'vim-jp/vimdoc-ja'
  Plug 'preservim/nerdtree'
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'tpope/vim-unimpaired'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-commentary'
call plug#end()

" ファジーファインダーから除外
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

" ヘルプの日本語化
set helplang=ja,en

" NERDTreeの画面を開閉する
map <C-n> :NERDTreeToggle<CR>
