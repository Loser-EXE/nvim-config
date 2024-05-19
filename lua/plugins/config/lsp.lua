local lspconfig = require('lspconfig')
local capabilities = require('cmp_nvim_lsp').default_capabilities()

require("neodev").setup{}

lspconfig.lua_ls.setup{
    capabilities = capabilities,
}
