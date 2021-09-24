vim.cmd("autocmd Colorscheme * highlight NvimTreeNormal guibg=#242b3")

vim.g.nvim_tree_auto_open = 1
vim.g.nvim_tree_auto_close = 1
vim.g.nvim_tree_quit_on_open = 1
vim.g.nvim_tree_follow = 1 
vim.g.nvim_tree_follow_update_path = 1
vim.g.nvim_tree_icons = {
  git = {
    unstaged = " ",
    staged =  " ",
    renamed =  " ",
    untracked =  " ",
  }
}
