vim.api.nvim_exec([[
  augroup BettyAutocmds
    autocmd!
    autocmd TextChanged,InsertLeave <buffer> lua require("betty.betty").run_betty()
    autocmd BufReadPost <buffer> lua require("betty.betty").run_betty()
    autocmd TextChangedI <buffer> lua require("betty.betty").clear_linter()
  augroup END
]], false)

