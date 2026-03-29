-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    'git', 'clone', '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable',
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({

  -- ── Treesitter ────────────────────────────────────────────────────────────
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function()
      -- pcall: plugin may not be in rtp yet on first install — restart nvim once
      local ok, configs = pcall(require, 'nvim-treesitter.configs')
      if not ok then return end
      configs.setup({
        ensure_installed = { 'python', 'cpp', 'c', 'lua', 'vim', 'vimdoc' },
        highlight        = { enable = true },
        indent           = { enable = true },
      })
    end,
  },

  -- ── Telescope ─────────────────────────────────────────────────────────────
  {
    'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
  },

  -- ── LSP + Mason ───────────────────────────────────────────────────────────
  -- nvim 0.11+ has vim.lsp.config built in — no nvim-lspconfig needed
  { 'williamboman/mason.nvim', config = true },
  {
    'williamboman/mason-lspconfig.nvim',
    dependencies = { 'williamboman/mason.nvim', 'hrsh7th/cmp-nvim-lsp' },
    config = function()
      -- Apply cmp capabilities to all servers
      vim.lsp.config('*', {
        capabilities = require('cmp_nvim_lsp').default_capabilities(),
      })

      require('mason-lspconfig').setup({
        ensure_installed = { 'pyright', 'clangd' },
      })

      vim.lsp.enable({ 'pyright', 'clangd' })

      -- LSP keymaps — only active when a server attaches
      vim.api.nvim_create_autocmd('LspAttach', {
        callback = function(args)
          local buf = args.buf
          local function m(keys, fn) vim.keymap.set('n', keys, fn, { buffer = buf }) end

          m('gd',         vim.lsp.buf.definition)
          m('gD',         vim.lsp.buf.declaration)
          m('gr',         vim.lsp.buf.references)
          m('gi',         vim.lsp.buf.implementation)
          m('K',          vim.lsp.buf.hover)
          m('<leader>rn', vim.lsp.buf.rename)
          m('<leader>ca', vim.lsp.buf.code_action)
          m('<leader>f',  vim.lsp.buf.format)
        end,
      })
    end,
  },

  -- ── Markdown ──────────────────────────────────────────────────────────────
  {
    'MeanderingProgrammer/render-markdown.nvim',
    ft = { 'markdown' },
    opts = {},
  },

  -- ── Completion ────────────────────────────────────────────────────────────
  {
    'hrsh7th/nvim-cmp',
    dependencies = {
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
    },
    config = function()
      local cmp = require('cmp')
      cmp.setup({
        mapping = cmp.mapping.preset.insert({
          ['<C-Space>'] = cmp.mapping.complete(),
          ['<CR>']      = cmp.mapping.confirm({ select = true }),
          ['<C-e>']     = cmp.mapping.abort(),
          ['<Tab>']     = cmp.mapping.select_next_item(),
          ['<S-Tab>']   = cmp.mapping.select_prev_item(),
        }),
        sources = {
          { name = 'nvim_lsp' },
          { name = 'buffer' },
          { name = 'path' },
        },
      })
    end,
  },

})
