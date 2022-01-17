local map = vim.api.nvim_set_keymap
local nvim_create_augroups = require('falcon.functions').nvim_create_augroups
vim.cmd 'source ~/.config/nvim/lua/falcon/removeqfitem.vim'
--telescope
map('n', '<leader>fs', "<cmd>lua require('telescope.builtin').grep_string({ path_display = true, search = vim.fn.input('Grep String > ')})<cr>", {noremap = true})
map('n', '<leader>ff', "<cmd>lua require('telescope.builtin').find_files()<cr>", {noremap = true})
map('n', '<leader>fg', "<cmd>lua require('telescope.builtin').live_grep()<cr>", {noremap = true})
map('n', '<leader>fb', "<cmd>lua require('telescope.builtin').buffers()<cr>", {noremap = true})
map('n', '<leader>gb', "<cmd>lua require('telescope.builtin').git_branches()<cr>", {noremap = true})
--window navigation
map('n','<C-j>','<C-w>j', {noremap = true})
map('n','<C-k>','<C-w>k', {noremap = true})
map('n','<C-h>','<C-w>h', {noremap = true})
map('n','<C-l>','<C-w>l', {noremap = true})
--buffers navigation
map('n','bc',':bd<cr>', {noremap = true, silent = true})--buffer close
map('n','bn',':bn<cr>', {noremap = true, silent = true})--buffer next
map('n','bp',':bp<cr>', {noremap = true, silent = true})--buffer previous
--move lines
map('n','˚','.-2<CR>==',{noremap = true})
map('n','∆','.+1<CR>==',{noremap = true})
--Git fugitive
map('n', '<leader>dl',':diffget //3<cr>', {noremap = false})
map('n', '<leader>dh',':diffget //2<cr>', {noremap = false})
map('n', '<leader>gs', ':G<cr>', {noremap = false})
--Open Explore
map('n', '<leader>e', ':NvimTreeToggle<cr>', {noremap = true})
-- Quickfixlist navigation
map('n', '<leader>cc',':cclose<cr>', {noremap = false})
map('n', '<C-[>',':cnext<cr>', {noremap = false})
map('n', '<C-]>', ':cprevious<cr>', {noremap = false})
-- autocmds
local autocmds = {
    syntax_sync_fromstart = {
        {"BufEnter",'*{js,jsx,ts,tsx}',':syntax sync fromstart'};
    },
    syntax_sync_clear = {
        {"BufLeave",'*{js,jsx,ts,tsx}',':syntax sync fromstart'};
    },
    show_diagnostics_on_hover = {
       {"CursorHold,CursorHoldI", "*", 'lua vim.diagnostic.open_float(nil, {focus=false, scope="cursor"})'}
    },
    nvimtree_colorscheme = {
      {"Colorscheme", "*", 'highlight NvimTreeNormal guibg=#242b3'}
    },
    remove_qf_item = {
      {"FileType", "qf", "map <buffer> dd :RemoveQFItem<cr>"}
    }
}
nvim_create_augroups(autocmds)
