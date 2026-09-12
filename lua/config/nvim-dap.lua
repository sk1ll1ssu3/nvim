local dap = require("dap")
local setup = {
  {
    name = "Launch",
    type = "codelldb",
    request = "launch",
    program = function()
      return "/tmp/" .. vim.fn.expand("%:t:r")
    end,
    cwd = "${workspaceFolder}",
    stopAtBeginningOfMainSubprogram = false,
    console = "integratedTerminal",
  },
}

dap.configurations.c = setup
dap.configurations.cpp = setup
codelldb_path = vim.fn.glob(vim.fn.expand("~/.vscode/extensions/vadimcn.vscode-lldb-*/adapter/codelldb"))

dap.adapters.codelldb = {
  type = "executable",
  command = codelldb_path, -- or if not in $PATH: "/absolute/path/to/codelldb"

  -- On windows you may have to uncomment this:
  -- detached = false,
}
