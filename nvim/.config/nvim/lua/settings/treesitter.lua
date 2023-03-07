require 'nvim-treesitter.configs'.setup {
  ensure_installed = {'ruby', 'lua', 'yaml', 'json'},
  sync_install =false,
  highlight = {
    enable = true,
    disable = { }
  },
  indent = {
    enable = true
  }
}
