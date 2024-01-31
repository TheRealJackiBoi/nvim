return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup({
        PATH = "prepend"
      })
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "tsserver",
          "tailwindcss",
          "pylsp",
          "graphql",
          "dockerls",
          "cssls",
          "clangd"
        }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({})
      lspconfig.tsserver.setup({})
      lspconfig.tailwindcss.setup({})
      lspconfig.pylsp.setup({})
      lspconfig.graphql.setup({})
      lspconfig.dockerls.setup({})
      lspconfig.cssls.setup({})
      lspconfig.clangd.setup({})

      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})
      vim.keymap.set("n", "<space>e", vim.diagnostic.open_float, {})
      vim.keymap.set('n', '<leader>r', vim.diagnostic.goto_next, {})

    end
  }

}
