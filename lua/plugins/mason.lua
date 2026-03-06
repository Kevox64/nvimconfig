return {
  "mason-org/mason.nvim",
  config = function ()
    require("mason").setup()

    local servers = {"typescript-language-server", "svelte-language-server", "eslint-lsp"}
    local registry = require("mason-registry")

    for _, server in ipairs(servers) do
      local pkg = registry.get_package(server)
      if not pkg:is_installed() then
        pkg:install()
      end
    end
  end
}
