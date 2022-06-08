call plug#begin('~/.vim/plugged')
  Plug 'vim-jp/vimdoc-ja'
  Plug 'preservim/nerdtree'
  Plug 'tpope/vim-unimpaired'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-commentary'
  " see ./install_memo.md
  Plug '~/.fzf'
  Plug 'junegunn/fzf.vim'
  Plug 'kana/vim-operator-user'
  Plug 'kana/vim-operator-replace'
  Plug 'skanehira/jumpcursor.vim'

  " rails
  Plug 'tpope/vim-rails'
  Plug 'tpope/vim-endwise'
  Plug 'slim-template/vim-slim'
  Plug 'mattn/emmet-vim'
  " Plug 'sirver/ultisnips'
  Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
  Plug 'neoclide/coc-solargraph'
  Plug 'thoughtbot/vim-rspec'

  "Git
  Plug 'tpope/vim-fugitive'

  "Theme
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
call plug#end()

" ヘルプの日本語化
set helplang=ja,en

" NERDTreeの画面を開閉する
map <C-n> :NERDTreeToggle<CR>

" fzf
nnoremap <silent> ,f :GFiles<CR>
nnoremap <silent> ,F :GFiles?<CR>
nnoremap <silent> ,b :Buffers<CR>
nnoremap <silent> ,l :BLines<CR>
nnoremap <silent> ,h :History<CR>
nnoremap <silent> ,r :Rg<CR>
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit' }
" Rgコマンドでフォルダ名を対象外にする
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --line-number --no-heading '.shellescape(<q-args>), 0,
  \   fzf#vim#with_preview({'options': '--exact --reverse --delimiter : --nth 3..'}, 'right:50%:wrap'))

"vim-airline
let g:airline#extensions#tabline#enabled = 1
nmap <C-h> <Plug>AirlineSelectPrevTab
nmap <C-l> <Plug>AirlineSelectNextTab
nmap <C-c> :bd<CR>

" " ultisnipes
" let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsJumpForwardTrigger="<c-n>"
" let g:UltiSnipsJumpBackwardTrigger="<c-p>"

" operator-replace
map <Leader>r <Plug>(operator-replace)

nmap <Leader>j <Plug>(jumpcursor-jump)

" vim-rspec
let g:rspec_command = "!bin/rspec {spec}"

command! Rcs :call RunCurrentSpecFile()
command! Rns :call RunNearestSpec()
command! Ras :call RunAllSpecs()

" coc.nvim
"" <Tab>で候補をナビゲート
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()
"" <Tab>で次、<S+Tab>で前
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

"Diagnosticsの、左横のアイコンの色設定
highlight CocErrorSign ctermfg=15 ctermbg=196
highlight CocWarningSign ctermfg=0 ctermbg=172

"" keybind
nmap <silent> cl :<C-u>CocList<cr>
nmap <silent> ch :<C-u>call CocAction('doHover')<cr>
nmap <silent> cdf <Plug>(coc-definition)
nmap <silent> crf <Plug>(coc-references)
nmap <silent> crn <Plug>(coc-rename)
nmap <silent> cfmt <Plug>(coc-format)