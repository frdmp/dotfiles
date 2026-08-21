return {
    "nvim-telescope/telescope.nvim",
    lazy = false,
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    keys = {
        {"<Leader>ff", function() require("telescope.builtin").find_files({}) end, desc="Telescope Find files"},
        {"<Leader>fg", function() require("telescope.builtin").live_grep({}) end, desc="Telescope Live Grep"},
        {"<Leader>fb", function() require("telescope.builtin").buffers({}) end, desc="Telescope Buffers"},
        {"<Leader>fh", function() require("telescope.builtin").help_tags({}) end, desc="Telescope Help Tags"},
    },
    config = true
}
