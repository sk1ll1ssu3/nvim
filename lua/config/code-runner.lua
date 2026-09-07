require("code_runner").setup({
  filetype = {
    cpp = "cd $dir && g++ -Wall -Wextra -pedantic-errors -g $fileName -o /tmp/$fileNameWithoutExt && /tmp/$fileNameWithoutExt",
    c = "cd $dir && gcc -Wall -Wextra -pedantic-errors -g $fileName -o /tmp/$fileNameWithoutExt && /tmp/$fileNameWithoutExt",
  },
})
