return {
  "mfussenegger/nvim-lint",
  -- Replace `opts` with a `config` function
  config = function()
    local lint = require("lint")

    lint.linters_by_ft = {
      -- ESLint LSP now handles javascript/typescript
      python = { "pylint" },
    }

    -- Create an autocommand to run the linter on specified events.
    vim.api.nvim_create_autocmd({ "BufWritePost", "BufReadPost", "InsertLeave" }, {
      group = vim.api.nvim_create_augroup("lint", { clear = true }),
      callback = function()
        lint.try_lint()
      end,
    })
  end,
}
