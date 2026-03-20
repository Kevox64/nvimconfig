vim.g.mapleader = " "
vim.g.maplocalleader = ","

vim.scriptencoding = "utf-8"
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"

vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

vim.opt.title = true

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.fillchars='eob: '

vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.breakindent = true
vim.opt.scrolloff = 15
vim.opt.wrap = true

vim.opt.hlsearch = true
vim.opt.showcmd = true
vim.opt.ignorecase = true

vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.splitkeep = "cursor"

vim.opt.clipboard = "unnamedplus"

vim.diagnostic.config({
  virtual_text = false,        -- inline diagnostic text
  signs = true,
  underline = true,
  update_in_insert = false,   -- don't show diagnostics while typing
  float = {
    border = "rounded",
    source = true,            -- shows which LSP reported the diagnostic
    header = "",
    prefix = "",
    focusable = false,        -- cursor won't jump into the float
  },
})

vim.api.nvim_create_autocmd("CursorHold", {
  callback = function()
    -- Only open if there are actual diagnostics under cursor
    local diags = vim.diagnostic.get(0, { lnum = vim.fn.line(".") - 1 })
    if #diags > 0 then
      vim.diagnostic.open_float(nil, { focus = false })
    end
  end,
})

vim.opt.updatetime = 500
