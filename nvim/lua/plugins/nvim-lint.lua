return {
  'mfussenegger/nvim-lint',
  event = { 'BufReadPre', 'BufNewFile' },
  config = function()
    local lint = require('lint')
    lint.linters_by_ft = {
      lua = { 'luacheck' },
      python = { 'ruff' },
      css = { 'stylelint' },
      html = {},
      dockerfile = { 'hadolint' },
      terraform = { 'tflint' },
      yaml = {},
      markdown = { 'markdownlint' },
      json = { 'jsonlint' },
    }

    lint.linters.luacheck.args = {
      '--global',
      'vim',
      '--formater',
      'plain',
      '-',
    }

    vim.api.nvim_create_autocmd({ 'BufWritePost', 'BufReadPost', 'InsertLeave' }, {
      callback = function()
        require('lint').try_lint()
      end,
    })
  end,
}
