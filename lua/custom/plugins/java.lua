return {
  {
    'nvim-java/nvim-java',
    config = function()
      require('java').setup()
      vim.lsp.enable 'jdtls'

      -- Set java indentation
      vim.api.nvim_create_autocmd('FileType', {
        pattern = 'java',
        callback = function()
          vim.opt_local.tabstop = 4
          vim.opt_local.shiftwidth = 4
          vim.opt_local.expandtab = true
        end,
      })
    end,
  },
}
