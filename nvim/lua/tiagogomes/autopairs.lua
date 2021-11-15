require('nvim-autopairs').setup{
  ignored_next_char = "[%w%.]", -- will ignore alphanumeric and `.` symbol
  fast_wrap = {
    map = '<esc>'
  }
}
-- If you want insert `(` after select function or method item
local cmp_autopairs = require('nvim-autopairs.completion.cmp')
local cmp = require('cmp')
cmp.event:on( 'confirm_done', cmp_autopairs.on_confirm_done())

--require("nvim-autopairs.completion.cmp").setup({
--  map_cr = true, --  map <CR> on insert mode
--  map_complete = true, -- it will auto insert `(` (map_char) after select function or method item
--  auto_select = true, -- automatically select the first item
--  insert = false, -- use insert confirm behavior instead of replace
--  map_char = { -- modifies the function or method delimiter by filetypes
--    all = '(',
--    tex = '{'
--  }
--})
