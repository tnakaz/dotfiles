require('material').setup({
  contrast = {
    sidebars = false, -- Enable contrast for sidebar-like windows ( for example Nvim-Tree )
    floating_windows = false, -- Enable contrast for floating windows
    line_numbers = false, -- Enable contrast background for line numbers
    sign_column = false, -- Enable contrast background for the sign column
    cursor_line = false, -- Enable darker background for the cursor line
    non_current_windows = true, -- Enable darker background for non-current windows
    popup_menu = false, -- Enable lighter background for the popup menu
  },
  italics = {
    comments = true,
    keywords = true,
  },
  disable = {
    background = true,
  },

  custom_highlights = {
    GitGutterAddLine = { bg = '#26402a' },
    GitGutterDeleteLine = { bg = 'NONE' },
    NormalNC = {bg='#364a54'}
  },
})


-- oceanic, deep ocean, palenight, lighter, darker
vim.g.material_style = 'oceanic'

vim.cmd('colorscheme material')
