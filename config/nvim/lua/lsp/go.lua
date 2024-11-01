return function(opts)
    require("lspconfig").gopls.setup({
        on_attach = opts.on_attach,
        capabilities = opts.capabilities,
    })
end
