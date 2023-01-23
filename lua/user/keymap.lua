local vim_g = vim.g
local vim_cmd = vim.cmd
local vim_key_map = vim.keymap

vim_g["mapleader"] = " "

-- Common
vim_key_map.set("v", "J", ":m '>+1<CR>gv=gv")
vim_key_map.set("v", "K", ":m '<-2<CR>gv=gv")

vim_key_map.set("n", "<leader>pv", vim_cmd.Ex)
vim_key_map.set("n", "J", "msJ`z")
vim_key_map.set("n", "Q", "<nop>")
vim_key_map.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim_key_map.set("n", "<C-j>", "<cmd>cprev<CR>zz")

vim_key_map.set("i", "<C-c>", "<Esc>")

-- Telescope
local builtin = require('telescope.builtin')
vim_key_map.set('n', '<leader>pf', builtin.find_files, {})
vim_key_map.set('n', '<leader>gf', builtin.git_files, {})
vim_key_map.set('n', '<leader>fg', builtin.live_grep, {})
vim_key_map.set('n', '<leader>ff', function ()
    builtin.find_files({ hidden = true })
end, { noremap = true, silent = true })
vim_key_map.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep | ") })
end)

-- Undotree
vim_key_map.set('n', '<leader>u', vim_cmd.UndotreeToggle)

-- Fugitive
vim_key_map.set('n', '<leader>gs', vim_cmd.Git)
