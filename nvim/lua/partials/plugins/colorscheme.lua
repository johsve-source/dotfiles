local colorscheme = {
  'marko-cerovac/material.nvim',
  lazy = false,
  priority = 1000,
}

colorscheme.config = function()
  vim.opt.background = vim.env.NVIM_COLORSCHEME_BG or 'dark'

  vim.cmd.filetype('plugin indent on')
  vim.cmd.syntax('on')

  -- Set up material.nvim
  vim.g.material_style = "darker"

require('material').setup({
    contrast = {
        terminal = false,
        sidebars = false,
        floating_windows = false,
        cursor_line = false,
        non_current_windows = false,
        filetypes = {},
    },
    styles = {
        comments = { italic = true },
        functions = { bold = true },
    },
    plugins = {
        "nvim-tree",
        "telescope",
    },
    custom_highlights = {
        CurSearch = { fg = "#82AAFF", bg = "#353535", bold = true },
        MatchParen = { fg = "#82AAFF", bold = true, reverse = true },
        NormalFloat = { bg = "#212121" },
        FloatBorder = { bg = "#212121" },
        TelescopeNormal = { bg = "#1A1A1A" },
        TelescopePromptNormal = { bg = "#151515" },
        TelescopeResultsNormal = { bg = "#1A1A1A" },
        TelescopeSelection = { bg = "#252525" },
        TelescopePromptBorder = { fg = "#151515", bg = "#151515" },
        TelescopeResultsBorder = { fg = "#1A1A1A", bg = "#1A1A1A" },
        TelescopePreviewBorder = { fg = "#1A1A1A", bg = "#1A1A1A" },
    },
})

  -- Set colorscheme
  vim.cmd.colorscheme('material')

  return colorscheme
end

return colorscheme

