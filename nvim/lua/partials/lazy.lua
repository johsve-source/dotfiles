vim.g.mapleader = ','

local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    '--single-branch',
    'https://github.com/folke/lazy.nvim.git',
    lazypath,
  })
end
vim.opt.runtimepath:prepend(lazypath)

require('lazy').setup('partials.plugins', {
  defaults = {
    lazy = true,
  },
  ui = {
    border = 'rounded',
    custom_keys = {
      ['<leader>ll'] = function(plugin)
        require('lazy.util').float_term({ 'lazygit', 'log' }, {
          cwd = plugin.dir,
        })
      end,
    },
  },
  dev = {
    path = '~/github',
  },
  change_detection = {
    notify = false,
  },
  install = {
    colorscheme = { 'onenord' },
  },
  performance = {
    rtp = {
      disabled_plugins = {
        'gzip',
        'matchit',
        'matchparen',
        'netrwPlugin',
        'tarPlugin',
        'tohtml',
        'tutor',
        'zipPlugin',
      },
    },
  },
  lockfile = vim.fn.stdpath('data') .. '/lazy-lock.json',
})

-- Add your LoadAllPlugins command here
vim.api.nvim_create_user_command('LoadAllPlugins', function()
  require('lazy').load({ plugins = {
    "blame.nvim", "cmp-buffer", "cmp-nvim-lsp", "cmp-path", "cmp-rg", "cmp-vsnip",
    "Comment.nvim", "conform.nvim", "copilot.lua", "diffview.nvim", "firenvim",
    "gitlinker.nvim", "lazydev.nvim", "mason-lspconfig.nvim", "mason.nvim",
    "nvim-autopairs", "nvim-cmp", "nvim-lspconfig", "nvim-navic", "nvim-tree.lua",
    "nvim-ts-autotag", "nvim-vtsls", "org-bullets.nvim", "orgmode",
    "telescope-fzf-native.nvim", "telescope-recent-files", "telescope.nvim",
    "template-string.nvim", "treesj", "tsc.nvim", "vim-dadbod",
    "vim-dadbod-completion", "vim-dadbod-ui", "vim-fugitive", "vim-vsnip",
    "vimspector", "workspaces.nvim"
  }})
end, {})
