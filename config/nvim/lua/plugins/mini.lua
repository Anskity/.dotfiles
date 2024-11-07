return {
    "echasnovski/mini.nvim",
    config = function()
        require("mini.pairs").setup()
        require("mini.ai").setup()
        require("mini.comment").setup()
    end
}
