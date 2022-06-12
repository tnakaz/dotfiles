call plug#begin('~/.vim/plugged')
  Plug 'vim-jp/vimdoc-ja'
  Plug 'tpope/vim-unimpaired'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-commentary'
  Plug 'kana/vim-operator-user'
  Plug 'kana/vim-operator-replace'
  Plug 'simeji/winresizer'
  Plug 't9md/vim-quickhl'
  Plug 'terryma/vim-expand-region'
  Plug 'folke/which-key.nvim'

  " FuzzyFinder
  " see ./install_memo.md
  Plug '~/.fzf'
  Plug 'junegunn/fzf.vim'

  " Dashboard
  Plug 'goolord/alpha-nvim'

  " 移動補助
  Plug 'unblevable/quick-scope'
  Plug 'skanehira/jumpcursor.vim'

  " Filer
  Plug 'lambdalisue/fern.vim'
  Plug 'yuki-yano/fern-preview.vim'
  Plug 'lambdalisue/fern-git-status.vim'
  Plug 'lambdalisue/fern-bookmark.vim'
  Plug 'LumaKernel/fern-mapping-fzf.vim'

  " rails
  Plug 'tpope/vim-rails'
  Plug 'tpope/vim-endwise'
  Plug 'slim-template/vim-slim'
  Plug 'mattn/emmet-vim'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'neoclide/coc-solargraph'
  Plug 'thoughtbot/vim-rspec'
  " Plug 'w0rp/ale'
  Plug 'sirver/ultisnips'
  Plug 'honza/vim-snippets'
   
  "Git
  Plug 'tpope/vim-fugitive'
  Plug 'airblade/vim-gitgutter'

  "Theme
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'sheerun/vim-polyglot'

call plug#end()

" ヘルプの日本語化
set helplang=ja,en

" NERDTreeの画面を開閉する
" map <C-n> :NERDTreeToggle<CR>

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

" ultisnipes
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-n>"
let g:UltiSnipsJumpBackwardTrigger="<c-p>"

" operator-replace
map <Leader>r <Plug>(operator-replace)

" jumpcursor
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

nmap <silent> cl :<C-u>CocList<cr>
nmap <silent> ch :<C-u>call CocAction('doHover')<cr>
nmap <silent> cdf <Plug>(coc-definition)
nmap <silent> crf <Plug>(coc-references)
nmap <silent> crn <Plug>(coc-rename)
nmap <silent> cfmt <Plug>(coc-format)

nnoremap <silent> <space>y  :<C-u>CocList -A --normal yank<cr>
" winresizer
" let g:winresizer_vert_resize = 5
" let g:winresizer_horiz_resize = 5

" ale
" " 保存時のみ実行する
" let g:ale_lint_on_text_changed = 0
" " 表示に関する設定
" let g:ale_sign_error = ''
" let g:ale_sign_warning = ''
" let g:airline#extensions#ale#open_lnum_symbol = '('
" let g:airline#extensions#ale#close_lnum_symbol = ')'
" let g:ale_echo_msg_format = '[%linter%]%code: %%s'
" let g:ale_fixers = { 'ruby': ['rubocop'] }
" let g:ale_fix_on_save = 1
" highlight link ALEErrorSign Tag
" highlight link ALEWarningSign StorageClass
" " Ctrl + kで次の指摘へ、Ctrl + jで前の指摘へ移動
" nmap <silent> <C-k> <Plug>(ale_previous_wrap)
" nmap <silent> <C-j> <Plug>(ale_next_wrap)

"Fern
" 隠しファイルを表示する
let g:fern#default_hidden=1
" Fern .をSpace+eキーに置き換え
nnoremap <silent> <Leader>e :<C-u>Fern .<CR>
nnoremap <silent> <Leader>n :<C-u>Fern . -reveal=%<CR>
nnoremap <silent> <Leader>b :<C-u>Fern bookmark:///<CR>

function! s:fern_settings() abort
  nmap <silent> <buffer> p     <Plug>(fern-action-preview:toggle)
  nmap <silent> <buffer> <C-p> <Plug>(fern-action-preview:auto:toggle)
  nmap <silent> <buffer> <C-d> <Plug>(fern-action-preview:scroll:down:half)
  nmap <silent> <buffer> <C-u> <Plug>(fern-action-preview:scroll:up:half)
endfunction

augroup fern-settings
  autocmd!
  autocmd FileType fern call s:fern_settings()
augroup END

" vim-quickhl
nmap <silent> <leader>m <Plug>(quickhl-manual-this)
xmap <silent> <leader>m <Plug>(quickhl-manual-this)
nmap <silent> <leader>M <Plug>(quickhl-manual-reset)
xmap <silent> <leader>M <Plug>(quickhl-manual-reset)

" terryma/vim-expand-region
map K <Plug>(expand_region_expand)
map J <Plug>(expand_region_shrink)

lua << EOF
  require("which-key").setup {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  }
EOF
