vim.lsp.config("*", {
  capabilities = require("blink.cmp").get_lsp_capabilities(),
})
vim.lsp.enable({"lua_ls", "svelte", "ts_ls"})
