require("code_runner").setup({
  filetype = {
    cpp = "cd $dir && g++ -Wall -Wextra -pedantic-errors -Ofast $fileName -o /tmp/$fileNameWithoutExt && /tmp/$fileNameWithoutExt",
    c = "cd $dir && gcc $fileName -o /tmp/$fileNameWithoutExt && /tmp/$fileNameWithoutExt",
  },
})
