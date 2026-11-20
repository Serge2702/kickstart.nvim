vim.pack.add { 'https://github.com/lukas-reineke/indent-blankline.nvim' }

vim.pack.add { 'https://github.com/HiPhish/rainbow-delimiters.nvim' }
-- Default Colors from indent-blankline, kept here as reference.
-- vim.api.nvim_set_hl(0, 'RainbowDelimiterRed', { fg = '#E06C75' })
-- vim.api.nvim_set_hl(0, 'RainbowDelimiterYellow', { fg = '#E5C07B' })
-- vim.api.nvim_set_hl(0, 'RainbowDelimiterBlue', { fg = '#61AFEF' })
-- vim.api.nvim_set_hl(0, 'RainbowDelimiterOrange', { fg = '#D19A66' })
-- vim.api.nvim_set_hl(0, 'RainbowDelimiterGreen', { fg = '#98C379' })
-- vim.api.nvim_set_hl(0, 'RainbowDelimiterViolet', { fg = '#C678DD' })
-- vim.api.nvim_set_hl(0, 'RainbowDelimiterCyan', { fg = '#56B6C2' })

vim.api.nvim_set_hl(0, 'RainbowDelimiterRed', { fg = '#E46876' })
vim.api.nvim_set_hl(0, 'RainbowDelimiterYellow', { fg = '#E6C384' })
vim.api.nvim_set_hl(0, 'RainbowDelimiterBlue', { fg = '#9CABCA' })
vim.api.nvim_set_hl(0, 'RainbowDelimiterOrange', { fg = '#FFA066' })
vim.api.nvim_set_hl(0, 'RainbowDelimiterGreen', { fg = '#98BB6C' })
vim.api.nvim_set_hl(0, 'RainbowDelimiterViolet', { fg = '#D27E99' })
vim.api.nvim_set_hl(0, 'RainbowDelimiterCyan', { fg = '#A3D4D5' })

---@type rainbow_delimiters.config
vim.g.rainbow_delimiters = {
  strategy = {
    [''] = 'rainbow-delimiters.strategy.global',
  },
  query = {
    [''] = 'rainbow-delimiters',
  },
  priority = {
    [''] = 110,
  },
  highlight = {
    'RainbowDelimiterBlue',
    'RainbowDelimiterOrange',
    'RainbowDelimiterGreen',
    'RainbowDelimiterYellow',
    'RainbowDelimiterViolet',
    'RainbowDelimiterRed',
    'RainbowDelimiterCyan',
  },
  blacklist = { 'xml' },
}

local hooks = require 'ibl.hooks'

require('ibl').setup { scope = { highlight = vim.g.rainbow_delimiters.highlight } }
hooks.register(hooks.type.SCOPE_HIGHLIGHT, hooks.builtin.scope_highlight_from_extmark)
require('ibl').update { indent = { char = '▏' } }
