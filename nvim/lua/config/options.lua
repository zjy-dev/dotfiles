-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.background = "light"
vim.opt.termguicolors = true
vim.opt.cursorline = true
vim.opt.cursorlineopt = "both"
vim.opt.laststatus = 3
vim.opt.winborder = "rounded"
vim.opt.pumblend = 0
vim.opt.winblend = 0
vim.opt.fillchars = {
  diff = "╱",
  eob = " ",
  fold = " ",
  foldclose = "",
  foldopen = "",
  foldsep = " ",
}
