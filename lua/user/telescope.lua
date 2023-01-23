require("telescope").setup {
    defaults = {
        file_ignore_patterns = { "node_modules" , ".git/"}
    },
    pickers = {
        live_grep = {
            additional_args = function()
                return {"--hidden"}
            end
        },
        grep_string = {
            additional_args = function()
                return {"--hidden"}
            end
        },
    },
}
