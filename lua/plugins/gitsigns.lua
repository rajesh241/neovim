return {
    "lewis6991/gitsigns.nvim",
    config = function()
        require("gitsigns").setup({
            current_line_blame = true, -- <- enable inline blame
            current_line_blame_opts = {
                delay = 500,
                virt_text_pos = "eol",
            },
        })
    end,
}
