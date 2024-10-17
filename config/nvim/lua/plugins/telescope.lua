return {
    "nvim-telescope/telescope.nvim",
    config = function()
        vim.keymap.set("n", "<leader>fs", "<cmd>Telescope find_files<cr>")
    end,
}
