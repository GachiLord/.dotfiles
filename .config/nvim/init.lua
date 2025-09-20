-- use system clipboard for yanking
vim.opt.clipboard = 'unnamedplus'

-- Enable line numbers
vim.wo.relativenumber = true
vim.wo.number = true

-- Enable auto indents
vim.opt.autoindent = true

-- Set tab width to 2 spaces
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2

-- Show tabs as special chars
vim.opt.list = true
vim.opt.listchars = { tab = '>-' }

-- use tabs in some languages
vim.api.nvim_create_autocmd({'FileType'}, {
  pattern = {'make', 'go'},
  callback = function(ev)
    vim.opt.list = false
    vim.opt.expandtab = false
  end
})

-- set color scheme
vim.cmd("colorscheme sorbet")

-- tree-view 
vim.g.netrw_liststyle = 3

vim.api.nvim_create_autocmd({'FileType'}, {
  pattern = {'netrw'},
  callback = function(ev)
    vim.cmd('set relativenumber')
  end
})

-- set leader
vim.g.mapleader = " "

-- Add tabs mappings
vim.api.nvim_set_keymap('n', '<C-H>', ':tabprev <CR>', {})
vim.api.nvim_set_keymap('n', '<C-L>', ':tabnext <CR>', {})

-- Add buffer mappings
vim.api.nvim_set_keymap('n', '<C-J>', ':bp <CR>', {})
vim.api.nvim_set_keymap('n', '<C-K>', ':bn <CR>', {})
vim.api.nvim_set_keymap('n', '<leader>e', ':e. <CR>', {})
vim.keymap.set(
  'n', 
  '<leader>d', 
  function()
    vim.bo.buflisted = false
    vim.api.nvim_buf_delete(0, { unload = false })
  end,
  {}
)

-- copy whole buffer mapping
vim.api.nvim_set_keymap('n', '<leader>y', 'gg"+yG', {})

-- search highlight mapping
vim.api.nvim_set_keymap('n', ',', ':noh <CR>', {})

-- telescope

local builtin = require('telescope.builtin')
local path = require "plenary.path"

vim.keymap.set('n', '<leader><leader>', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>g', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set(
  'n', 
  '<leader>s', 
  function()
    builtin.grep_string({
      additional_args = { '-g', '!' .. path:new(vim.fn.expand('%')):make_relative(vim.fn.getcwd()) }
    })
  end,
  { desc = 'Telescope grep string' }
)
vim.keymap.set('n', '<leader>b', builtin.buffers, { desc = 'Telescope buffers' })

-- marks

local marks = require('marks')
marks.setup()

-- sessions

vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"

local session = require("auto-session")
session.setup({
  suppressed_dirs = { "~/", "~/Projects", "~/Downloads", "/" }
})

