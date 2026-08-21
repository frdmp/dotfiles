return {
    "sunjon/shade.nvim",
    lazy = false,
    config = true,
    opts = {
        overlay_opacity = 40,
        opacity_step = 5,
        keys = {
            brightness_up = "<C-Up>",
            brightness_down = "<C-Down>",
            toggle = "<Leader>s",
        }
    }
}
