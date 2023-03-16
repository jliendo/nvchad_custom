local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

-- if you just want default config for the servers then put them in a table
local servers = { "yamlls", "emmet_ls", "html", "cssls", "tsserver", "svelte", "pyright", "clangd" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

--
-- lspconfig.pyright.setup { blabla}
--
-- Para cloudformation
lspconfig["yamlls"].setup {
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
    yaml = {
      hover = true,
      format = {
        enable = true,
        singleQuote = true,
      },
      completition = true,
      validate = true,
      customTags = {
        "!GetAtt",
        "!Ref",
        "!ImportValue",
      },
      schemas = {
        'https://raw.githubusercontent.com/awslabs/goformation/v4.18.2/schema/cloudformation.schema.json: "/*"',
        'https://raw.githubusercontent.com/aws/serverless-application-model/main/samtranslator/schema/schema.json: "/*"'
      },
      schemaStore = {
        enable = true,
      },
    }
  },
}
