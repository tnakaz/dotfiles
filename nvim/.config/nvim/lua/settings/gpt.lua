vim.g.gpt_commit_msg = {
  api_key = vim.fn.getenv("OPENAI_API_KEY"),
  api_model = "gpt-3.5-turbo",
  max_lines_to_send = 2000,
  result_filter = function(text)
    return string.gsub(text, "^(.)", function(c) return string.lower(c) end)
  end
}

vim.api.nvim_exec([[
  augroup GPTCommitMsg
    autocmd!
    autocmd FileType gpt-commit-msg-result nnoremap <silent><buffer>q :<C-u>bwipeout!<CR>
  augroup END
]], false)
