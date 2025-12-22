return {
    "stevearc/conform.nvim",
    opts = {
        formatters_by_ft = {
            c = {'clang-format'},
        },

        format_on_save = {
            timeout_ms = 500,
            lsp_format = "fallback",
        },

        formatters = {
            ['clang-format'] = {
                command = "clang-format21"
            }
        }
    }
}
