-- clear search highlight on <Esc>
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Clear search highlight" })

-- diagnostics
vim.keymap.set("n", "<Leader>do", vim.diagnostic.open_float, { desc = "Open diagnostic float" })
vim.keymap.set("n", "<Leader>d[", function() vim.diagnostic.jump({ count = -1 }) end, { desc = "Previous diagnostic" })
vim.keymap.set("n", "<Leader>d]", function() vim.diagnostic.jump({ count = 1 }) end, { desc = "Next diagnostic" })

-- window navigation with <Ctrl> hjkl
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Go to left window" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Go to lower window" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Go to upper window" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Go to right window" })

