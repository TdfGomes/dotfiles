require('nvim-autopairs').setup{
  check_ts = true,
  ts_config = {
      lua = {'string'},
      javascript = {'template_string'},
  },
  fast_wrap = {
    map = '<esc>'
  }
}

local cmp_autopairs = require('nvim-autopairs.completion.cmp')
local cmp = require('cmp')

cmp.event:on( 'confirm_done', cmp_autopairs.on_confirm_done())

