call plug#begin('~/.vim/plugged')
  Plug 'vim-jp/vimdoc-ja'
  Plug 'tpope/vim-unimpaired'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-commentary'
  Plug 'kana/vim-operator-user'
  Plug 'kana/vim-operator-replace'
  Plug 'simeji/winresizer'
  Plug 't9md/vim-quickhl'
  Plug 'folke/which-key.nvim'
  Plug 'tversteeg/registers.nvim'
  Plug 'justinmk/vim-sneak'
  Plug 'cohama/lexima.vim'
  
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
  Plug 'w0rp/ale'
  Plug 'honza/vim-snippets'

  " yaml
  Plug 'Yggdroot/indentLine'

  "Git
  Plug 'tpope/vim-fugitive'
  Plug 'airblade/vim-gitgutter'
  Plug 'kdheepak/lazygit.nvim'
  Plug 'iberianpig/tig-explorer.vim'
  Plug 'rbgrouleff/bclose.vim'
  "Theme
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'sheerun/vim-polyglot'
  Plug 'lambdalisue/nerdfont.vim'
  Plug 'lambdalisue/fern-renderer-nerdfont.vim'
  Plug 'lambdalisue/glyph-palette.vim'
call plug#end()

" ヘルプの日本語化
set helplang=ja,en

" Fzf:
nnoremap <silent> ,f :GFiles!<CR>
nnoremap <silent> ,F :GFiles!?<CR>
nnoremap <silent> ,b :Buffers!<CR>
nnoremap <silent> ,l :BLines!<CR>
nnoremap <silent> ,h :History!<CR>
nnoremap <silent> ,rg :Rg!<CR>
nnoremap <silent> ,rw :Rg!<C-r><C-w><CR>

let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit' }
" Rgコマンドでフォルダ名を対象外にする
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --line-number --no-heading '.shellescape(<q-args>), 0,
  \   fzf#vim#with_preview({'options': '--exact --reverse --delimiter : --nth 3..'}, 'right:50%:wrap'))
let g:fzf_preview_window = ['up:50%']
nmap <C-h> <Plug>AirlineSelectPrevTab
nmap <C-l> <Plug>AirlineSelectNextTab
" Airline:
nmap <C-c> :bd<CR>
let g:airline_section_c = '%t %M'
let g:airline#extensions#hunks#non_zero_only = 1 
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#show_tabs = 1
let g:airline#extensions#tabline#show_tab_nr = 0
let g:airline#extensions#tabline#show_tab_type = 1
let g:airline#extensions#tabline#enabled = 1

let g:fern#renderer = 'nerdfont'

" アイコンに色をつける
augroup my-glyph-palette
  autocmd! *
  autocmd FileType fern call glyph_palette#apply()
  autocmd FileType nerdtree,startify call glyph_palette#apply()
augroup END

" OperatorReplace:
map <Leader>r <Plug>(operator-replace)

" Jumpcursor:
nmap <Leader>j <Plug>(jumpcursor-jump)

" VimRspec:
let g:rspec_command = "!bin/rspec {spec}"
command! Rcs :call RunCurrentSpecFile()
command! Rns :call RunNearestSpec()
command! Ras :call RunAllSpecs()

" Coc:
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
highlight HighlightedyankRegion term=bold ctermbg=255 guibg=#f44336

nmap <silent> cli :<C-u>CocList<cr>
nmap <silent> cls :<C-u>CocList -I symbols<cr>
nmap <silent> ch :<C-u>call CocAction('doHover')<cr>
nmap <silent> cdf <Plug>(coc-definition)
nmap <silent> crf <Plug>(coc-references)
nmap <silent> crn <Plug>(coc-rename)
nmap <silent> cfmt <Plug>(coc-format)

nnoremap <silent> <space>y  :<C-u>CocList -A --normal yank<cr>

inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

let g:coc_snippet_next = '<tab>'

vmap <leader>a <Plug>(coc-codeaction-selected)
nmap <leader>a <Plug>(coc-codeaction-selected)

" ale
" " 保存時のみ実行する
let g:ale_lint_on_text_changed = 0
" 表示に関する設定
let g:ale_sign_error = ''
let g:ale_sign_warning = ''
let g:airline#extensions#ale#open_lnum_symbol = '('
let g:airline#extensions#ale#close_lnum_symbol = ')'
let g:ale_echo_msg_format = '[%linter%]%code: %%s'
let g:ale_fixers = { 'ruby': ['rubocop'] }
let g:ale_fix_on_save = 1
highlight link ALEErrorSign Tag
highlight link ALEWarningSign StorageClass
" " Ctrl + kで次の指摘へ、Ctrl + jで前の指摘へ移動
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

" Fern:
let g:fern#default_hidden=1
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

nnoremap <leader>g :LazyGit<CR>

" Yaml:
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
let g:indentLine_char = '⦙'

" Tig:
" open tig with Project root path
nnoremap <Leader>t :TigOpenProjectRootDir<CR>
" open tig grep
nnoremap tg :TigGrep<CR>
" resume from last grep
nnoremap tgr :TigGrepResume<CR>
" open tig grep with the selected word
vnoremap tg y:TigGrep<Space><C-R>"<CR>
" open tig grep with the word under the cursor
nnoremap gw :<C-u>:TigGrep<Space><C-R><C-W><CR>

let g:lazygit_floating_window_scaling_factor = 0.95 " scaling factor for floating window

" Gitgutter
" Always show sign column
set signcolumn=yes

" By default updatetime is 4000 ms
set updatetime=100

" Use fontawesome icons as signs
let g:gitgutter_sign_added = '+'
let g:gitgutter_sign_modified = '>'
let g:gitgutter_sign_removed = '-'
let g:gitgutter_sign_removed_first_line = '^'
let g:gitgutter_sign_modified_removed = '<'

" Default key mapping off
let g:gitgutter_map_keys = 0
augroup vimrc_vim_gitgutter
  autocmd!
  " sign column bg color
  autocmd VimEnter,ColorScheme * highlight SignColumn guibg=bg ctermbg=bg

  " sign column color
  autocmd VimEnter,ColorScheme * highlight GitGutterAdd guifg=#000900 ctermfg=2
  autocmd VimEnter,ColorScheme * highlight GitGutterChange guifg=#bbbb00 ctermfg=3
  autocmd VimEnter,ColorScheme * highlight GitGutterDelete guifg=#ff2222 ctermfg=1
augroup END
nmap ]h <Plug>(GitGutterNextHunk)
nmap [h <Plug>(GitGutterPrevHunk)
nnoremap gif :<C-u>GitGutterFold<CR>
nmap ghp <Plug>(GitGutterPreviewHunk)
let g:gitgutter_preview_win_floating = 0
let g:gitgutter_preview_win_location = 'bo'
