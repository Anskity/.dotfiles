return {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = {
                "markdown",
                "lua",
                "go",
                "nix",
                "json",
                "c",
            }
        })
    end,
}
