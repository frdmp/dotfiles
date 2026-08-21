return {
    "nvim-tree/nvim-tree.lua",
    lazy = false,
    config = true,
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    keys = {
        {"<Leader><Enter>", function() vim.cmd("NvimTreeToggle") end, desc = "Toggle Tree"},
    },
    opts = {
        sort_by = "case_sensitive",
        view = {
            width = 40,
        },
        renderer = {
            group_empty = true,
        },
        filters = {
            dotfiles = true,
        }
    }
}
