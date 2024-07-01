local config = function()
    local treesitter = require("nvim-treesitter.configs")
    treesitter.setup({
        ensure_installed = {"php", "lua", "typescript", "javascript"},
        auto_install = true,
        highlight = {
            enable = true,
            additional_vim_regex_highlighting = false,
        }
    })
end

return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    lazy = false,
    config = config
}
