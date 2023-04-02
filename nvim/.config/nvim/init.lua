require('basic')
require('keybind')
require('plugins')

--AdvancedSettings
require('settings.material')
require('settings.lualine')
require('settings.highlitedyank')
require('settings.fern')
require('settings.lsp')
require('settings.git_management')
require('settings.fzf')
require('settings.wintabs')
require('settings.ale')
require('settings.nvim-cmp')
require('settings.treesitter')
require('settings.gpt')

vim.cmd [[
  if has('nvim') && executable('nvr')
    let $GIT_EDITOR = "nvr --remote-silent -l"
  endif
]]
