vim.cmd('packadd vim-jetpack')

require('jetpack').startup(function(use)
  use { 'tani/vim-jetpack', opt = 1 } -- bootstrap
  use 'vim-jp/vimdoc-ja'

  -- Thema
  use 'marko-cerovac/material.nvim'
  use 'nvim-lualine/lualine.nvim'

  use 'ibhagwan/fzf-lua'
  use 'machakann/vim-sandwich'
  use 'cohama/lexima.vim'
  use 'tpope/vim-commentary'
  use 'kana/vim-operator-user'
  use 'kana/vim-operator-replace'
  use 'simeji/winresizer'
  use 't9md/vim-quickhl'
  use 'folke/which-key.nvim'
  use 'tversteeg/registers.nvim'
  use 'justinmk/vim-sneak'
  use 'unblevable/quick-scope'
  use 'skanehira/jumpcursor.vim'
  use 'zefei/vim-wintabs'
  use 'zefei/vim-wintabs-powerline'
  use 'machakann/vim-highlightedyank'
  use 'wellle/targets.vim'
  use 'w0rp/ale'
  use 'voldikss/vim-browser-search'

  -- Git Management
  use 'tpope/vim-fugitive'
  use 'airblade/vim-gitgutter'
  use 'kdheepak/lazygit.nvim'

  -- Filer
  use 'lambdalisue/fern.vim'
  use 'yuki-yano/fern-preview.vim'
  use 'lambdalisue/fern-git-status.vim'
  use 'LumaKernel/fern-mapping-fzf.vim'
  use 'lambdalisue/fern-bookmark.vim'
  use 'lambdalisue/nerdfont.vim'
  use 'lambdalisue/fern-renderer-nerdfont.vim'
  use 'lambdalisue/glyph-palette.vim'

  -- Lsp
  use 'neovim/nvim-lspconfig'
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'

  -- Auto complete
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
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
  use 'sheerun/vim-polyglot'
end)
