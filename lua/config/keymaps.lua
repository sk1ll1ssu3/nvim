-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Force HJKL
vim.keymap.set("n", "<left>", function()
  print("Use h!")
end, {
  desc = "Preventing use of arrow keys",
})
vim.keymap.set("n", "<right>", function()
  print("Use l!")
end, {
  desc = "Preventing use of arrow keys",
})
vim.keymap.set("n", "<up>", function()
  print("Use k!")
end, {
  desc = "Preventing use of arrow keys",
})
vim.keymap.set("n", "<down>", function()
  print("Use j!")
end, {
  desc = "Preventing use of arrow keys",
})

-- Code Runner
vim.keymap.set("n", "<F5>", ":RunCode<CR>i", {
  noremap = true,
  silent = false,
  desc = "Run code",
})

-- Debugger
vim.keymap.set("n", "<C-F5>", "<cmd>lua require('dapui').toggle()<CR>")
vim.keymap.set("n", "<C-b>", "<cmd>DapToggleBreakpoint<CR>")
vim.keymap.set("n", "<C-c>", "<cmd>DapContinue<CR>")
vim.keymap.set("n", "<C-n>", "<cmd>DapStepOver<CR>")
vim.keymap.set("n", "<C-s>", "<cmd>DapStepInto<CR>")
vim.keymap.set("n", "<C-f>", "<cmd>DapStepOut<CR>")

-- yanky

vim.keymap.set({ "n", "x" }, "p", "<Plug>(YankyPutAfter)")
vim.keymap.set({ "n", "x" }, "P", "<Plug>(YankyPutBefore)")
vim.keymap.set({ "n", "x" }, "gp", "<Plug>(YankyGPutAfter)")
vim.keymap.set({ "n", "x" }, "gP", "<Plug>(YankyGPutBefore)")

vim.keymap.set("n", "<c-p>", "<Plug>(YankyPreviousEntry)")
vim.keymap.set("n", "<c-n>", "<Plug>(YankyNextEntry)")

-- Dial

vim.keymap.set("n", "<C-a>", function()
  require("dial.map").manipulate("increment", "normal")
end)
vim.keymap.set("n", "<C-x>", function()
  require("dial.map").manipulate("decrement", "normal")
end)
vim.keymap.set("n", "g<C-a>", function()
  require("dial.map").manipulate("increment", "gnormal")
end)
vim.keymap.set("n", "g<C-x>", function()
  require("dial.map").manipulate("decrement", "gnormal")
end)
vim.keymap.set("x", "<C-a>", function()
  require("dial.map").manipulate("increment", "visual")
end)
vim.keymap.set("x", "<C-x>", function()
  require("dial.map").manipulate("decrement", "visual")
end)
vim.keymap.set("x", "g<C-a>", function()
  require("dial.map").manipulate("increment", "gvisual")
end)
vim.keymap.set("x", "g<C-x>", function()
  require("dial.map").manipulate("decrement", "gvisual")
end)

-- Aerial

vim.keymap.set("n", "<leader>a", "<cmd>AerialToggle!<CR>")
