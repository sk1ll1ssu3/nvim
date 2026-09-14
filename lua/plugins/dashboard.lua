return {
  "nvimdev/dashboard-nvim",
  event = "VimEnter",
  config = function()
    header = [[
                    ▄▄▄▄▄▄▄▄▄▄     ▄▄▄▄▄▄▄▄▄▄                      ▄▄▄▄▄▄▄▄▄▄     ▄▄▄▄▄▄▄▄▄▄   
░▄▄          ▄▄░ ░▄▄ ▀▐████▀▀   ░▄▄ ▀▐████▀▀   ░▄▄          ▄▄░ ░▄▄ ▀▐████▀▀   ░▄▄ ▀▀▐███▀▀ ▄▄░
░██░░ ░░░░  ▄▐█░ ░██▀        ░░ ░██▀        ░░ ░██░░ ░░░░  ▄▐█░ ░██▀        ░░ ░██░░       ▄▐█░
░██▒░ ░░░░ ░███░ ░██▌ ░░░░░░░░░ ░██▌ ░░░░░░░░░ ░██▒░ ░░░░ ░███░ ░██▌ ░░░░░░░░░ ░██▒░ ░░░░ ░███░
░██▓░ ░░░░  ▐██░ ░██▀ ░░░░░░░░░ ░██▀ ░░░░░░░░░ ░██▓░ ░░░░  ▐██░ ░██▀ ░░░░░░░░░ ░██▓░ ░░░░  ▐██░
░▀▀ ▄▄▄▄▄▄▄▄ ▀▀░ ░▒▀ ▄▄▄▄▄▄▄▄   ░▒▀  ░░░░░░░░░ ░▀▀ ▄▄▄▄▄▄▄▄ ▀▀░ ░▒▀ ▄▄▄▄▄▄▄▄   ░▀▀ ▄▄▄▄▄▄▄▄ ▀▀░
   █▓▓█▓█████       █▓▓█▓█████░    ░░░░░░░░░░░    █▓▓█▓█████       █▓▓█▓█████░    █▓▓█▓█████   
░█▄          ▄▄░ ░▄▄            ░▄▄  ░░░░░░░░░ ░█▄          ▄▄░ ░▄▄            ░█▄          ▄▄░
░▓▌▄ ░░░░░ ░▀██░ ░██▌ ░░░░░░░░░ ░██▌ ░░░░░░░░░ ░▓▌▄ ░░░░░ ░▀██░ ░██▌ ░░░░░░░░░ ░▓▌▄ ░░░░░ ░▀██░
░███ ░░░░░ ░▐██░ ░██▌ ░░░░░░░░░ ░██▌ ░░░░░░░░░ ░███ ░░░░░ ░▐██░ ░██▌ ░░░░░░░░░ ░███ ░░░░░ ░▐██░
░█▀█ ░░░░░ ░▀█▀░ ░██▓        ░░ ░██▓        ░░ ░█▀█ ░░░░░ ░▀█▀░ ░██▓        ░░ ░█▀█ ░░░░░ ░▀█▀░
░█▀  ░░░░░   ▀ ░ ░▒▀░▄▄▄███▄▄   ░▒▀░▄▄▄███▄▄   ░█▀  ░░░░░   ▀ ░ ░▒▀░▄▄▄███▄▄   ░█▀  ░░░░░   ▀ ░
    ]]
    require("dashboard").setup({
      theme = "doom",
      config = {
        header = vim.split(header, "\n"),
        center = {
          {
            icon = " ",
            icon_hl = "Title",
            desc = "Find File           ",
            desc_hl = "String",
            key = "b",
            keymap = "SPC f f",
            key_hl = "Number",
            key_format = " %s", -- remove default surrounding `[]`
            action = "lua print(2)",
          },
          {
            icon = " ",
            desc = "Find Dotfiles",
            key = "f",
            keymap = "SPC f d",
            key_format = " %s", -- remove default surrounding `[]`
            action = "lua print(3)",
          },
        },
        footer = {
          '"First, solve the problem. Then, write the code." — John Johnson',
        }, --your footer
      },
    })
  end,
  dependencies = { { "nvim-tree/nvim-web-devicons" } },
}
