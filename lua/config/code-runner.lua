require("code_runner").setup({
  filetype = {
    cpp = "cd $dir && g++ -Wall -Wextra -Wshadow -fsanitize=undefined -pedantic-errors -g $fileName -o /tmp/$fileNameWithoutExt && /tmp/$fileNameWithoutExt",
  },
})
