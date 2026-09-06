vim.pack.add { 'https://github.com/HiPhish/rainbow-delimiters.nvim' }
config = function()
  ---@type rainbow_delimiters.config

  local highlight = {
    'RainbowDelimiterRed',
    'RainbowDelimiterYellow',
    'RainbowDelimiterBlue',
    'RainbowDelimiterOrange',
    'RainbowDelimiterGreen',
    'RainbowDelimiterViolet',
    'RainbowDelimiterCyan',
  }

  local hooks = require 'ibl.hooks'

  vim.g.rainbow_delimiters = {
    blacklist = { 'xml' },
    highlight = highlight,
  }
  require('ibl').setup { scope = { highlight = highlight } }

  hooks.register(hooks.type.SCOPE_HIGHLIGHT, hooks.builtin.scope_highlight_from_extmark)
end
