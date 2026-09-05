-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<left>", function()
  print("Use h!")
end)
vim.keymap.set("n", "<right>", function()
  print("Use l!")
end)
vim.keymap.set("n", "<up>", function()
  print("Use k!")
end)
vim.keymap.set("n", "<down>", function()
  print("Use j!")
end)

vim.keymap.set("n", "<F5>", function()
  require("code_runner").run()
end)
