return function(opts)
    require("lspconfig").nixd.setup({
        on_attach = opts.on_attach,
        capabilities = opts.capabilities,
    })
end
