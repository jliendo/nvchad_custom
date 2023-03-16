local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins

local sources = {

  -- webdev stuff
  -- b.formatting.deno_fmt, -- choosed deno for ts/js files cuz its very fast!
  b.diagnostics.cfn_lint.with { filetypes = { "yaml", "yml"} },
  b.diagnostics.eslint_d.with { filetypes = { "html", "javascript", "typescript"} },
  b.formatting.prettier.with { filetypes = { "svelte", "javascript", "typescript", "html", "markdown", "css" } }, -- so prettier works only on these filetypes

  -- Lua
  b.formatting.stylua,

  -- cpp
  b.formatting.clang_format,

  -- python
  b.diagnostics.flake8,
  b.formatting.black,
}

null_ls.setup {
  debug = true,
  sources = sources,
}
