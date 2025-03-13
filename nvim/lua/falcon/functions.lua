local M = {}

function M.nvim_create_augroups(definitions)
  for group_name, definition in pairs(definitions) do
    vim.api.nvim_create_augroup(group_name, { clear = true })
    for _, def in ipairs(definition) do
      local events = def[1]
      local pattern = def[2]
      local command = def[3]
      local opts = def[4] or {}

      vim.api.nvim_create_autocmd(events, {
        pattern = pattern,
        command = command,
        group = group_name,
        callback = opts.callback,
      })
    end
  end
end

function M.organize_imports()
  local params = {
    command = "_typescript.organizeImports",
    arguments = {vim.api.nvim_buf_get_name(0)},
    title = ""
  }
  vim.lsp.buf.execute_command(params)
end

return M
