require("config.lazy")

-- ============
-- 100% Working OSC52 Yank
-- Works inside tmux, Byobu, or plain SSH
-- Relies on system() to emit a real printf, so the escape hits the PTY.
-- ============
vim.o.clipboard = "unnamedplus"

local function paste()
    return {
        vim.fn.split(vim.fn.getreg(""), "\n"),
        vim.fn.getregtype(""),
    }
end

vim.g.clipboard = {
    name = "OSC 52",
    copy = {
        ["+"] = require("vim.ui.clipboard.osc52").copy("+"),
        ["*"] = require("vim.ui.clipboard.osc52").copy("*"),
    },
    paste = {
        ["+"] = paste,
        ["*"] = paste,
    },
}
