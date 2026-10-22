return {
    "stevearc/conform.nvim",
    event = { "BufWritePre", "BufNewFile" },
    cmd = { "ConformInfo" },
    keys = {
        {
            "<leader>cf",
            function()
                require("conform").format({ async = true, lsp_format = "fallback" })
            end,
            mode = { "n", "x" },
            desc = "Format (conform)",
        },
    },
    opts = {
        formatters_by_ft = {
            python = { "isort", "ruff_format" },
            rust = { "rustfmt", lsp_format = "fallback" },
        },
        default_format_opts = {
            lsp_format = "fallback",
        },
        format_on_save = {
            timeout_ms = 500,
            lsp_format = "fallback",
        },
    },
}
