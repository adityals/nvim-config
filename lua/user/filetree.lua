-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup({
    filters = { custom = { "^.git$" } },
    renderer = {
        icons = {
            glyphs = {
                default = "",
                folder = {
                    arrow_open = "▾",
                    arrow_closed = "▸",
                    default = "▸",
                    open =  "▾",
                    empty = "▸",
                    empty_open = "▾",
                    symlink = "▸",
                    symlink_open = "▾",
                }

            }
        }
    }
})

