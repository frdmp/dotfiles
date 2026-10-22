-- Formatting is handled by conform.nvim (see lua/plugins/conform.lua).

-- diagnostics
vim.diagnostic.config({
  severity_sort = true,
  virtual_text = true,
  underline = { severity = { min = vim.diagnostic.severity.WARN } },
  float = { border = "rounded", source = "if_many" },
  jump = {
    on_jump = function(_, bufnr)
      vim.diagnostic.open_float({ bufnr = bufnr, scope = "cursor", focus = false })
    end,
  },
})

-- LSP buffer-local keymaps
vim.api.nvim_create_autocmd("LspAttach", {
  group = vim.api.nvim_create_augroup("lsp-attach", { clear = true }),
  callback = function(ev)
    local b = ev.buf
    local map = function(mode, lhs, rhs, desc)
      vim.keymap.set(mode, lhs, rhs, { buffer = b, desc = desc })
    end
    map("n", "gd", vim.lsp.buf.definition, "Goto definition")
    map("n", "gD", vim.lsp.buf.declaration, "Goto declaration")
    map("n", "gI", vim.lsp.buf.implementation, "Goto implementation")
    map("n", "gy", vim.lsp.buf.type_definition, "Goto type definition")
    map("n", "<leader>rn", vim.lsp.buf.rename, "Rename symbol")
    map({ "n", "x" }, "<leader>ca", vim.lsp.buf.code_action, "Code action")
    map("n", "gl", vim.diagnostic.open_float, "Line diagnostics")
    map("n", "[d", function() vim.diagnostic.jump({ count = -1 }) end, "Prev diagnostic")
    map("n", "]d", function() vim.diagnostic.jump({ count = 1 }) end, "Next diagnostic")
  end,
})
