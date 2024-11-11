return function(opts)
    require("lspconfig").clangd.setup({
        on_attach = opts.on_attach,
        capabilities = opts.capabilities,
    })
end
