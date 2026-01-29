return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate', -- This command will run after installing or updating the plugin
  config = function()
    local filetypes = {
      'javascript',
      'css',
      'json',
      'yaml',
      'html',
      'typescript',
      'python',
      'lua',
      'vim',
      'vimdoc',
      'markdown',
      'markdown_inline',
      'diff',
      'bash',
    }
    require('nvim-treesitter').install(filetypes)
    vim.api.nvim_create_autocmd('FileType', {
      pattern = filetypes,
      callback = function()
        vim.treesitter.start()
      end,
    })
  end,
}
