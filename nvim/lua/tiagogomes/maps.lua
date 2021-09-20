local map = vim.api.nvim_set_keymap
local nvim_create_augroups = rquire('functions')

--telescope
map('n', '<leader>ff', "<cmd>lua require('telescope.builtin').find_files()<cr>", {noremap = true})
map('n', '<leader>fg', "<cmd>lua require('telescope.builtin').live_grep()<cr>", {noremap = true})
map('n', '<leader>fb', "<cmd>lua require('telescope.builtin').buffers()<cr>", {noremap = true})
--window navigation
map('n','<C-j>','<C-w>j', {noremap = true})
map('n','<C-k>','<C-w>k', {noremap = true})
map('n','<C-h>','<C-w>h', {noremap = true})
map('n','<C-l>','<C-w>l', {noremap = true})
--buffers navigation
map('n','<silent>bc',':bd', {noremap = true})--buffer close
map('n','<silent>bn',':bn', {noremap = true})--buffer next
map('n','<silent>bp',':bp', {noremap = true})--buffer previous
--move lines
map('n','˚','.-2<CR>==',{noremap = true})
map('n','∆','.+1<CR>==',{noremap = true})
--Git fugitive
map('n', '<leader>dl',':diffget //3')
map('n', '<leader>dh',':diffget //2')
map('n', '<leader>gs', ':G<cr>')
--Open Explore
map('n', '<leader>e', ':Explore', {noremap = true})

-- autocmds
local autocmds = {
    syntax_sync_fromstart = {
        {"BufEnter",'*{js,jsx,ts,tsx}',':syntax sync fromstart'};
    };
    syntax_sync_clear = {
        {"BufLeave",'*{js,jsx,ts,tsx}',':syntax sync fromstart'};
    };
}

nvim_create_augroups(autocmds)
