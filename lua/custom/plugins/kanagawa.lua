vim.pack.add { 'https://github.com/rebelot/kanagawa.nvim' }

require('kanagawa').setup {
  compile = false, -- enable compiling the colorscheme
  undercurl = true, -- enable undercurls
  commentStyle = { italic = true },
  functionStyle = {},
  keywordStyle = { italic = true },
  statementStyle = { bold = true },
  typeStyle = {},
  transparent = false, -- do not set background color
  dimInactive = true, -- dim inactive window `:h hl-NormalNC`
  terminalColors = true, -- define vim.g.terminal_color_{0,17}
  overrides = function(colors) -- add/modify highlights
    return {
      ErrorMsg = { fg = colors.palette.autumnRed },
      RainbowDelimiterRed = { fg = colors.theme.term[2] },
      RainbowDelimiterYellow = { fg = colors.theme.term[12] },
      RainbowDelimiterBlue = { fg = colors.theme.term[13] },
      RainbowDelimiterOrange = { fg = colors.theme.term[17] },
      RainbowDelimiterGreen = { fg = colors.theme.term[11] },
      RainbowDelimiterViolet = { fg = colors.theme.term[14] },
      RainbowDelimiterCyan = { fg = colors.theme.term[15] },
    }
  end,
  theme = 'wave', -- Load "wave" theme
  background = { -- map the value of 'background' option to a theme
    dark = 'wave', -- try "dragon" !
    light = 'lotus',
  },
}

-- setup must be called before loading
vim.cmd 'colorscheme kanagawa'
