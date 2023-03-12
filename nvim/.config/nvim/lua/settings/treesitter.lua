require 'nvim-treesitter.configs'.setup {
  ensure_installed = {'ruby', 'yaml', 'json'},
  sync_install =false,
  highlight = {
    enable = true,
    disable = { 'lua' }
  },
  indent = {
    enable = false
  }
}
