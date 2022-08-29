require'fzf-lua'.setup {
   winopts = {
    fullscreen       = false,
    height           = 0.95,            -- window height
    width            = 0.95,            -- window width
    preview = {
      default     = 'bat',
      vertical       = 'down:65%',      -- up|down:size
      layout         = 'vertical',          -- horizontal|vertical|flex
      delay          = 50,
    },
  }
}
