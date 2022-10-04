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

vim.cmd [[
  if has('nvim') && executable('nvr')
    let $GIT_EDITOR = "nvr --remote-silent -l"
  endif
]]
vim.cmd [[
command -complete=file -nargs=1 GetVimgrepFile call GetVimgrepFile(<f-args>)
function GetVimgrepFile(filename)
  let l:orgErrorformat = &errorformat
  let &errorformat='%f|%l col %v-%k| %m'
  execute 'cfile ' . a:filename
  copen
  let &errorformat=l:orgErrorformat
endfunction
]]
