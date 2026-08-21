return {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function(_, opts)
        local capabilities = require("cmp_nvim_lsp").default_capabilities()
        local servers = { "texlab", "rust_analyzer", "ruff", "ty" }

        for _, lsp in ipairs(servers) do
            vim.lsp.config(lsp, {
                    capabilities = capabilities,
                }
            )
            vim.lsp.enable(lsp)
        end
    end
}
