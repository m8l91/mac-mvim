vim.api.nvim_create_autocmd({"BufEnter", "BufWinEnter"}, {
  pattern = "*",
  group = vim.api.nvim_create_augroup("ForceTabSettings", { clear = true }),
  callback = function()
    vim.opt_local.tabstop = 2
    vim.opt_local.softtabstop = 2
    vim.opt_local.shiftwidth = 2
    vim.opt_local.expandtab = true
    print("Applied tab settings")  -- Debug message
  end,
})
