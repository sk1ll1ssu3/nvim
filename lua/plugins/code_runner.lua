return {
  "CRAG666/code_runner.nvim",
  cmd = { "RunCode", "RunFile", "RunProject", "RunClose", "CRFiletype", "CRProjects" },
  -- keys = { "<leader>r" }, -- add the mappings you use
  vim.keymap.set("n", "<leader>rr", ":RunCode<CR>", { noremap = true, silent = false }),
  vim.keymap.set("n", "<leader>rf", ":RunFile<CR>", { noremap = true, silent = false }),
  vim.keymap.set("n", "<leader>rft", ":RunFile tab<CR>", { noremap = true, silent = false }),
  vim.keymap.set("n", "<leader>rp", ":RunProject<CR>", { noremap = true, silent = false }),
  vim.keymap.set("n", "<leader>rc", ":RunClose<CR>", { noremap = true, silent = false }),
  vim.keymap.set("n", "<leader>crf", ":CRFiletype<CR>", { noremap = true, silent = false }),
  vim.keymap.set("n", "<leader>crp", ":CRProjects<CR>", { noremap = true, silent = false }),
  opts = {
    -- your config (mode, filetype, ...) goes here
  },
}
