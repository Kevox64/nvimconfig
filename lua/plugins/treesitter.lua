return {
  "nvim-treesitter/nvim-treesitter", 
  build = ":TSUpdate",
  config = function()
    -- Setup treesitter
    local config = require("nvim-treesitter.configs")
    config.setup({
	    ensure_installed = {"lua", "javascript", "dockerfile", "gitignore", "go", "helm", "html", "http", "java", "json", "kotlin", "markdown", "markdown_inline", "python", "css", "scss", "sql", "typescript", "svelte", "yaml"},
	    highlight = {enable = true },
	    indent = {enable = true},
    })
  end
}
