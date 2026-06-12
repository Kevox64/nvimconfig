return {
  "stevearc/oil.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("oil").setup({
      default_file_explorer = true,  -- replaces netrw
      view_options = {
        show_hidden = true,          -- show dotfiles
      },
      float = {
        border = "rounded",
      },
    })

    vim.keymap.set("n", "<leader>E", "<cmd>Oil --float<cr>", { desc = "Open file explorer" })
    vim.keymap.set("n", "-", "<cmd>Oil<cr>", { desc = "Open parent directory" })
  end
}
