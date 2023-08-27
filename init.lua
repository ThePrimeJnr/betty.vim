require "betty"

vim.api.nvim_set_keymap(
	"n",
	"<leader>fl",
	':lua require("betty_checker").check_betty_errors()<CR>',
	{ noremap = true, silent = true }
)

-- Automatically run betty.lua after leaving insert mode or making changes
vim.api.nvim_exec([[
  augroup BettyAutocmds
    autocmd!
    autocmd TextChanged,InsertLeave <buffer> lua require("betty.betty_checker").check_betty_errors()
    autocmd BufReadPost <buffer> lua require("betty.betty_checker").check_betty_errors()
    autocmd TextChangedI <buffer> lua require("betty.betty_checker").clear_betty_errors()
  augroup END
]], false)

