require'lspconfig'.tsserver.setup{
    --on_attach = custom_lsp_attach,
    capabilities = capabilities
}
