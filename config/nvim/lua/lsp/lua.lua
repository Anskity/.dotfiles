return {
    name = "lua-language-server",
    pattern = "lua",
    cmd = {"lua-language-server"},
    get_root_dir = function()
        return vim.fn.getcwd()
    end,
}
