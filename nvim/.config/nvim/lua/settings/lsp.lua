local lsp_opt = {
  -- -- Function executed when the LSP server startup
  on_attach = function(client, bufnr)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', { noremap = true, silent = true })

    -- vim.cmd 'autocmd BufWritePre * lua vim.lsp.buf.formatting_sync(nil, 1500)'

    -- keyboard shortcut
    local bufopts = { noremap = true, silent = true, buffer = bufnr }
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
    vim.keymap.set('n', '<Leader>rn', vim.lsp.buf.rename, bufopts)
    vim.keymap.set('n', '<Leader>c', vim.lsp.buf.code_action, bufopts)
    vim.keymap.set('n', 'bf', vim.lsp.buf.formatting, bufopts)
    vim.keymap.set('n', '<Leader>eo', vim.diagnostic.open_float, { noremap = true, silent = true })
    vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { noremap = true, silent = true })
    vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { noremap = true, silent = true })
    vim.keymap.set('n', '<Leader>el', vim.diagnostic.setloclist, { noremap = true, silent = true })
  end,

  capabilities = require('cmp_nvim_lsp').default_capabilities(
    vim.lsp.protocol.make_client_capabilities()
  )
}

require('mason').setup()

require('mason-lspconfig').setup_handlers({ function(server)
  require('lspconfig')[server].setup(lsp_opt)
end })

require("mason-lspconfig").setup({
  ensure_installed = { "solargraph", "jsonls" }
})

-- LSP handlers
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, { virtual_text = false }
)
-- Reference highlight
vim.cmd [[
  highlight LspReferenceText  cterm=underline ctermfg=1 ctermbg=8 gui=underline guifg=#A00000 guibg=#104040
  highlight LspReferenceRead  cterm=underline ctermfg=1 ctermbg=8 gui=underline guifg=#A00000 guibg=#104040
  highlight LspReferenceWrite cterm=underline ctermfg=1 ctermbg=8 gui=underline guifg=#A00000 guibg=#104040
]]
