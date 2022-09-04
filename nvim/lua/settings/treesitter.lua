require 'nvim-treesitter.configs'.setup {
  ensure_installed = {'ruby', 'lua', 'yaml', 'json'},
  sync_install = true,
  highlight = {
    enable = true,
    disable = { }
  }
}
