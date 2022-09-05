local cmp = require("cmp")
local lspkind = require('lspkind')

cmp.setup({
  snippet = {
    expand = function(args)
      vim.fn["vsnip#anonymous"](args.body)
    end,
  },
  sources = {
    { name = "nvim_lsp" },
    { name = "buffer" },
    { name = 'vsnip' },
    -- { name = "path" },
  },

  mapping = cmp.mapping.preset.insert({
    ["<C-k>"] = cmp.mapping.select_prev_item(),
    ["<C-j>"] = cmp.mapping.select_next_item(),
    ['<C-h>'] = cmp.mapping.abort(),
    ["<C-l>"] = cmp.mapping.confirm { select = true }
  }),
  experimental = {
    ghost_text = true,
  },

  formatting = {
    format = lspkind.cmp_format({
      with_text = true, -- do not show text alongside icons
      maxwidth = 50, -- prevent the popup from showing more than provided characters (e.g 50 will not show more than 50 characters)
      -- The function below will be called before any actual modifications from lspkind
      -- so that you can provide more controls on popup customization. (See [#30](https://github.com/onsails/lspkind-nvim/pull/30))
      before = function(entry, vim_item)
        return vim_item
      end
    })
  }
})
-- cmp.setup.cmdline(":", {
--   sources = {
--     { name = "cmdline_history", max_item_count = 10 },
--     { name = "cmdline", max_item_count = 10 },
--   },
-- })

cmp.setup.cmdline("/", {
  sources = {
    { name = "buffer", max_item_count = 10 },
    { name = "cmdline_history", max_item_count = 10 },
  },
})
