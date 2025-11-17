local M = {}

M.on_attach = function(client, bufnr)
  local map = vim.keymap.set
  local opts = { buffer = bufnr, noremap = true, silent = true }

  map('n', 'gD', vim.lsp.buf.declaration, opts)
  map('n', 'gd', vim.lsp.buf.definition, opts)
  map('n', 'K', vim.lsp.buf.hover, opts)
  map('n', 'gi', vim.lsp.buf.implementation, opts)
  map('n', '<C-k>', vim.lsp.buf.signature_help, opts)
  map('n', '<leader>rn', vim.lsp.buf.rename, opts)
  map('n', '<leader>ca', vim.lsp.buf.code_action, opts)
  map('n', 'gr', vim.lsp.buf.references, opts)
  map('n', '<leader>ld', vim.diagnostic.open_float, opts)
  map('n', '[d', vim.diagnostic.goto_prev, opts)
  map('n', ']d', vim.diagnostic.goto_next, opts)

  -- Specific to eslint
  if client.name == 'eslint' then
    vim.api.nvim_create_autocmd("BufWritePre", {
      buffer = bufnr,
      command = "LspEslintFixAll",
    })
    -- Add a keymap for manual fixing as well
    map('n', '<leader>ef', '<cmd>LspEslintFixAll<CR>', { desc = 'Fix all ESLint issues' })
  end
end

M.capabilities = require('cmp_nvim_lsp').default_capabilities()

return M
