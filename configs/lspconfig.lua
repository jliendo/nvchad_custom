local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

-- local lspconfig = require "lspconfig"
local present, lspconfig = pcall(require, "lspconfig")
if not present then
  print("Error loading lspconfig")
end


-- if you just want default config for the servers then put them in a table
local servers = { "emmet_ls", "html", "cssls", "tsserver", "svelte", "pyright", "clangd" }

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
lspconfig.yamlls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "yaml", "yml" },
  settings = {
    yaml = {
      hover = true,
      format = {
        enable = true,
        singleQuote = true,
      },
      completion = true,
      validate = true,
      customTags = {
        "!GetAtt",
        "!Ref",
        "!Cidr",
        "!And",
        "!If",
        "!Not",
        "!Equals",
        "!Or",
        "!FindInMap",
        "!Base64",
        "!Join",
        "!Ref",
        "!Sub",
        "!GetAtt",
        "!GetAZs",
        "!ImportValue",
        "!Select",
        "!Split",
      },
      schemas = {
        'https://raw.githubusercontent.com/awslabs/goformation/v4.18.2/schema/cloudformation.schema.json: "/*.yaml"',
        'https://raw.githubusercontent.com/aws/serverless-application-model/main/samtranslator/schema/schema.json: "/*.yaml"'
      },
      -- schemaStore = {
      --   enable = true,
      -- },
    }
  },
}
