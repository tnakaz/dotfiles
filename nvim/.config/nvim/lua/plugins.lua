local openai_api_key = vim.fn.getenv("OPENAI_API_KEY")
vim.cmd('packadd vim-jetpack')
require('jetpack.packer').startup(function(use)
  use { 'tani/vim-jetpack', opt = 1 } -- bootstrap
  use 'vim-jp/vimdoc-ja'

  -- Theme
  use 'marko-cerovac/material.nvim'
  use 'nvim-lualine/lualine.nvim'

  use 'github/copilot.vim'
  if openai_api_key ~= nil and openai_api_key ~= "" then
    use "ktakayama/gpt-commit-msg.vim"
  end

  use 'ibhagwan/fzf-lua'
  use 'machakann/vim-sandwich'
  use 'cohama/lexima.vim'
  use 'tpope/vim-commentary'
  use 'kana/vim-operator-user'
  use 'kana/vim-operator-replace'
  use 'simeji/winresizer'
  -- use 't9md/vim-quickhl' -- 任意の文字をハイライト
  use 'folke/which-key.nvim'
  use {
    "tversteeg/registers.nvim",
    config = function()
      require("registers").setup()
    end,
  }
  use 'zefei/vim-wintabs'
  use 'zefei/vim-wintabs-powerline'
  use 'machakann/vim-highlightedyank' -- yankをハイライト
  use 'wellle/targets.vim'
  use 'wellle/line-targets.vim'
  use 'voldikss/vim-browser-search'

  use 'takuya-nakazawa/path-to-clipboard.nvim'
  use 'takuya-nakazawa/window-layout-manager.nvim'
  use 'takuya-nakazawa/code-evolution.nvim'

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
  use 'w0rp/ale'
  use 'neovim/nvim-lspconfig'
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'

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
  -- use 'tpope/vim-endwise'
  use 'slim-template/vim-slim'

  use 'sheerun/vim-polyglot' -- Syntax Highlight
  use 'nvim-treesitter/nvim-treesitter'

  -- DB
  use 'tpope/vim-dadbod'
  use 'kristijanhusak/vim-dadbod-ui'
end)
