vim.cmd('packadd vim-jetpack')

require('jetpack').startup(function(use)
  use { 'tani/vim-jetpack', opt = 1 } -- bootstrap
  use 'vim-jp/vimdoc-ja'

  -- Theme
  use 'marko-cerovac/material.nvim'
  use 'nvim-lualine/lualine.nvim'

  use 'ibhagwan/fzf-lua'
  use 'machakann/vim-sandwich'
  use 'cohama/lexima.vim'
  use 'tpope/vim-commentary'
  use 'kana/vim-operator-user'
  use 'kana/vim-operator-replace'
  use 'simeji/winresizer'
  use 't9md/vim-quickhl' -- 任意の文字をハイライト
  use 'folke/which-key.nvim'
  use 'tversteeg/registers.nvim' -- i <C-r>でレジスタ表示
  use 'zefei/vim-wintabs'
  use 'zefei/vim-wintabs-powerline'
  use 'machakann/vim-highlightedyank' -- yankをハイライト
  use 'wellle/targets.vim'
  use 'wellle/line-targets.vim'
  use 'voldikss/vim-browser-search'

  -- 移動系
  use 'ggandor/lightspeed.nvim'
  use 'skanehira/jumpcursor.vim'
  use 'unblevable/quick-scope' -- 最短で移動できる文字の色を変える

  -- Git
  use 'tpope/vim-fugitive'
  use 'airblade/vim-gitgutter'
  use 'kdheepak/lazygit.nvim'

  -- Filer
  use { 'junegunn/fzf', run = 'call fzf#install()' }
  use 'lambdalisue/fern.vim'
  use 'lambdalisue/fern-hijack.vim'
  use 'lambdalisue/fern-git-status.vim'
  use 'LumaKernel/fern-mapping-fzf.vim'
  use 'yuki-yano/fern-preview.vim'
  use 'lambdalisue/fern-bookmark.vim'
  use 'lambdalisue/nerdfont.vim'
  use 'lambdalisue/fern-renderer-nerdfont.vim'
  use 'lambdalisue/glyph-palette.vim'

  -- Lsp
  use 'neovim/nvim-lspconfig'
  use 'w0rp/ale'
  -- use 'williamboman/mason.nvim'
  -- use 'williamboman/mason-lspconfig.nvim'

  -- Auto complete
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-cmdline'
  use 'onsails/lspkind-nvim'
  use 'hrsh7th/vim-vsnip'
  use 'hrsh7th/vim-vsnip-integ'
  use 'hrsh7th/cmp-vsnip'
  use 'rafamadriz/friendly-snippets'

  -- Rails
  -- use 'tpope/vim-rails'
  use 'tpope/vim-endwise'
  use 'slim-template/vim-slim'

  use 'sheerun/vim-polyglot' -- Syntax Highlight

  -- DB
  use 'tpope/vim-dadbod'
  use 'kristijanhusak/vim-dadbod-ui'
end)
