  -- My own variables
  vim.o.fileformats = 'unix,dos'
  vim.o.background = 'light'
  vim.o.diffopt = 'internal,filler,closeoff,vertical,iwhite,algorithm:histogram,inline:word,linematch:60,anchor'
  vim.o.history = 1024
  vim.o.tabstop = 8
  vim.o.shiftwidth = 4
  vim.o.softtabstop = 4
  vim.o.expandtab = true
  vim.o.smarttab = true
  vim.o.showmatch = true
  vim.o.whichwrap = 'b,s,<,>,[,]'
  vim.o.smartindent = true
  vim.o.wildmenu = true
  vim.o.wildmode = 'list:full'
  vim.o.completeopt = 'fuzzy,menuone,noselect,popup'
  vim.o.title = true

  vim.keymap.set('v', '<C-C>', '"+y', { desc = 'Copy in visual mode' })
  vim.keymap.set('n', '<C-PageUp>', ':bprev<CR>', { desc = 'Previous Buffer' })
  vim.keymap.set('n', '<C-PageDown>', ':bnext<CR>', { desc = 'Next Buffer' })
  vim.keymap.set('v', '<leader>x', ':!xmllint --format --recover - <CR>', { desc = 'Format XML with xmllint' })

  -- Disabling treesitter for plsql files
  vim.api.nvim_create_autocmd('FileType', {
    pattern = { 'plsql' },
    callback = function()
      vim.treesitter.stop()
      vim.cmd 'setlocal commentstring=--%s'
      vim.cmd 'setlocal foldmethod=syntax'
    end,
  })

  -- Folding for xml files
  vim.api.nvim_create_autocmd('FileType', {
    pattern = { 'xml' },
    callback = function()
      vim.cmd 'setlocal foldmethod=indent foldlevelstart=999 foldminlines=1 shiftwidth=4'
    end,
  })
