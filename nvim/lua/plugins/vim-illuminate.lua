return {
    "RRethy/vim-illuminate",
    lazy = false,
    opts = {
        disable_keymaps = false,
    },
    config = function(_, opts)
        require("illuminate").configure(opts)
    end,
    keys = {
        { "<Leader>k", function() require("illuminate").goto_prev_reference("wrapscan") end },
        { "<Leader>j", function() require("illuminate").goto_next_reference("wrapscan") end },
    }
}
