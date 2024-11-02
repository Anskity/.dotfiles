return function(opts)
    require("lspconfig").rust_analyzer.setup({
        on_attach = opts.on_attach,
        capabilities = opts.capabilities,
    })
end
