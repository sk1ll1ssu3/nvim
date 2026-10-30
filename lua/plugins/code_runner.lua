return {
  {
    "CRAG666/code_runner.nvim",
    config = function()
      require("code_runner").setup {
        filetype = {
          rust = "cd $dir && cargo run",
          c = "cd $dir && gcc -g $fileName -o /tmp/$fileNameWithoutExt && /tmp/$fileNameWithoutExt",
          cpp = "cd $dir && g++ -std=c++17 -Wall -Wextra -Wshadow -g $fileName -o /tmp/$fileNameWithoutExt && /tmp/$fileNameWithoutExt",
          asm = {
            "cd $dir && ",
            "nasm -f elf64 -g $fileName -o /tmp/$fileNameWithoutExt.o && ",
            "ld /tmp/$fileNameWithoutExt.o -o /tmp/$fileNameWithoutExt && ",
            "/tmp/$fileNameWithoutExt",
          },
        },
      }
    end,
    lazy = false,
  },
}
