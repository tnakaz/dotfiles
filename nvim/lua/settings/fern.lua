vim.cmd [[
  " show icon
  let g:fern#renderer = "nerdfont"

  " icon coloration
  augroup my-glyph-palette
    autocmd! *
    autocmd FileType fern call glyph_palette#apply()
    autocmd FileType nerdtree,startify call glyph_palette#apply()
  augroup END
]]
