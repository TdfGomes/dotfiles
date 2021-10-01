vim.cmd("autocmd Colorscheme * highlight NvimTreeNormal guibg=#242b3")

vim.g.nvim_tree_quit_on_open = 1
vim.g.nvim_tree_icons = {
  git = {
    unstaged = " ",
    staged =  " ",
    renamed =  " ",
    untracked =  " ",
  }
}
