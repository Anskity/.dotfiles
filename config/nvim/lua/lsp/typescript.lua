return function(opts)
    require("lspconfig").ts_ls.setup({
        on_attach = opts.on_attach,
        capabilities = opts.capabilities,
    })
end
