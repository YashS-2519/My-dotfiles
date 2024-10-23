return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "harper_ls", "clangd", "ts_ls" }
      })
    end
  },
  {
    "VonHeikemen/lsp-zero.nvim",
    branch = "v4.x",
    config = function()
      local lsp = require('lsp-zero')

      lsp.on_attach(function(client, bufnr)
        local opts = { buffer = bufnr }

        vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
        vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
        vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, opts)
        vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
        vim.keymap.set('n', 'go', vim.lsp.buf.type_definition, opts)
        vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
        vim.keymap.set('n', 'gs', vim.lsp.buf.signature_help, opts)
        vim.keymap.set('n', '<F2>', vim.lsp.buf.rename, opts)
        vim.keymap.set({'n', 'x'}, '<F3>', function() vim.lsp.buf.format({async = true}) end, opts)
      end)

      lsp.setup()
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({})
      lspconfig.harper_ls.setup({})
      lspconfig.clangd.setup({})
      lspconfig.ts_ls.setup({})
    end
  },

  {
    'hrsh7th/nvim-cmp',
    dependencies = {
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-cmdline',
      'hrsh7th/nvim-cmp',
      'hrsh7th/cmp-vsnip',
      'hrsh7th/vim-vsnip',
    },
    config = function()
      local cmp = require('cmp')

      cmp.setup({
        snippet = {
          expand = function(args)
            vim.fn["vsnip#anonymous"](args.body) -- Use `vsnip` for snippets
          end,
        },
        mapping = cmp.mapping.preset.insert({
          ['<C-n>'] = cmp.mapping.select_next_item(),    -- Move to next item
          ['<C-p>'] = cmp.mapping.select_prev_item(),  -- Move to previous item
          ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Confirm selection
        }),
        sources = cmp.config.sources({
          { name = 'nvim_lsp' }, -- Use LSP source for completion
          { name = 'buffer' },   -- Use buffer source for completion
          { name = 'path' },     -- Use path source for completion
          { name = 'vsnip' }     -- Use snippets source for completion
        })
      })
    end
  },
}
