return {
  "stevearc/aerial.nvim",
  config = function() require("config.aerial") end,
  -- Optional dependencies
  dependencies = {
     "nvim-treesitter/nvim-treesitter",
     "nvim-tree/nvim-web-devicons"
  },
}
