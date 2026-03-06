-- toggleterm.lua
return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    require("toggleterm").setup({
      open_mapping = [[<C-/>]],
      direction = "float",
      float_opts = {
        border = "curved",
      },
    })

     -- Lazygit floating window
    local Terminal = require("toggleterm.terminal").Terminal
    local lazygit = Terminal:new({
      cmd = "lazygit",
      direction = "float",
      float_opts = {
        border = "curved",
      },
      on_open = function(term)
        -- Close lazygit with q (lazygit's default) or escape
        vim.keymap.set("t", "<Esc>", "<Esc>", { buffer = term.bufnr })
      end,
    })

    vim.keymap.set("n", "<leader>g", function()
      lazygit:toggle()
    end, { desc = "Toggle Lazygit" })
  end
}
