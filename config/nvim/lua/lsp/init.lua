local lsp_list = {
    require("lsp.lua"),
}

local on_attach = function()
    local opts = {}
    vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', opts)
    vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', opts)
    vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', opts)
    vim.keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>', opts)
    vim.keymap.set('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>', opts)
    vim.keymap.set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>', opts)
    vim.keymap.set('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>', opts)
    vim.keymap.set('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)
    vim.keymap.set({'n', 'x'}, '<F3>', '<cmd>lua vim.lsp.buf.format({async = true})<cr>', opts)
    vim.keymap.set('n', '<F4>', '<cmd>lua vim.lsp.buf.code_action()<cr>', opts)
end

for _, lsp in pairs(lsp_list) do
    vim.api.nvim_create_autocmd("FileType", {
        pattern = lsp.pattern,
        callback = function()
            local client = vim.lsp.start_client({
                name = lsp.name,
                cmd = lsp.cmd,
                root_dir = lsp.get_root_dir(),
                on_attach = on_attach,
            })

            if not client then
                vim.notify("Lsp client couldn't be created")
            end
            vim.lsp.buf_attach_client(0, client)
        end,
    })
end
