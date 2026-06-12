-- kotlin.lua
return {
  "AlexandrosAlexiou/kotlin.nvim",
  ft = { "kotlin" },
  dependencies = {
    "mason-org/mason.nvim",
    "mason-org/mason-lspconfig.nvim",  -- kotlin.nvim needs this internally
    "stevearc/oil.nvim",                  -- for navigating to package folders
    "folke/trouble.nvim",               -- for KotlinSymbols and KotlinWorkspaceSymbols
  },
  config = function()
    require("kotlin").setup({
      root_markers = {
        "pom.xml",        -- maven
        "mvnw",           -- maven wrapper
        ".git",
      },
      jdk_for_symbol_resolution = nil,  -- auto-detect from project
      jre_path = nil,
      jvm_args = nil,
      inlay_hints = {
        enabled = true,
        parameters = true,
        parameters_compiled = true,
        parameters_excluded = false,
        types_property = true,
        types_variable = true,
        function_return = true,
        function_parameter = true,
        lambda_return = true,
        lambda_receivers_parameters = true,
        value_ranges = true,
      },
    })

    -- Keymaps
    vim.keymap.set("n", "<leader>ki", "<cmd>KotlinOrganizeImports<cr>", { desc = "Kotlin Organize Imports" })
    vim.keymap.set("n", "<leader>kf", "<cmd>KotlinFormat<cr>", { desc = "Kotlin Format" })
    vim.keymap.set("n", "<leader>ks", "<cmd>KotlinSymbols<cr>", { desc = "Kotlin Symbols" })
    vim.keymap.set("n", "<leader>kw", "<cmd>KotlinWorkspaceSymbols<cr>", { desc = "Kotlin Workspace Symbols" })
    vim.keymap.set("n", "<leader>kh", "<cmd>KotlinHintsToggle<cr>", { desc = "Kotlin Toggle Hints" })
    vim.keymap.set("n", "<leader>kc", "<cmd>KotlinCleanWorkspace<cr>", { desc = "Kotlin Clean Workspace" })
  end
}
