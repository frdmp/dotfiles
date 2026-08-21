vim.api.nvim_create_autocmd({"BufWritePost", "FileWritePost"}, { pattern = "*.py" , command = "silent! !ruff format <afile>"})
vim.api.nvim_create_autocmd({"BufWritePost", "FileWritePost"}, { pattern = "*.py" , command = "silent! !isort <afile>"})
vim.api.nvim_create_autocmd({"BufWritePost", "FileWritePost"}, { pattern = "*.rs" , command = "silent! !cargo fmt"})
