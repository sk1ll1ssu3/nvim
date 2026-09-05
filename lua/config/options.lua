-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.guicursor = "a:block"
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.wrap = false
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Neovide

if vim.g.neovide then
  vim.g.neovide_opacity = 0.8
  vim.g.neovide_normal_opacity = 0.8
  vim.g.neovide_scroll_animation_length = 0.3
  vim.g.neovide_scroll_animation_far_lines = 1
end
