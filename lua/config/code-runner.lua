require("code_runner").setup({
  filetype = {
    cpp = "cd $dir && g++ -std=c++17 -Wall -Wextra -Wshadow -pedantic-errors -g $fileName -o /tmp/$fileNameWithoutExt && /tmp/$fileNameWithoutExt",
  },
})
