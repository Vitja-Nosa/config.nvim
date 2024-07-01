return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
    },

    config = function()
        require("mason").setup()
        require("mason-lspconfig").setup({
            ensure_installed = {
                "psalm"
            },
            handlers = {
                function (server_name)
                    print("setting up", server_name)
                    require("lspconfig")[server_name].setup {}
                end
            }
        })
    end
}
